unit Unit1;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Types,
  System.DateUtils,

  JS,
  Web,
  JSDelphiSystem,

  Vcl.Controls,
  Vcl.StdCtrls,

  WEBLib.Graphics,
  WEBLib.Controls,
  WEBLib.Forms,
  WEBLib.Dialogs,
  WEBLib.WebCtrls,
  WEBLib.ExtCtrls,
  WEBLib.StdCtrls;

const
  AnimatedElements = 5;

type
  TForm1 = class(TWebForm)
    divBackground: TWebHTMLDiv;
    divAnimParent: TWebHTMLDiv;
    divButtons: TWebHTMLDiv;
    tmrStartup: TWebTimer;
    btnMain: TWebButton;
    btnScale: TWebButton;
    btnChange: TWebButton;
    btnVolume: TWebButton;
    btnShare: TWebButton;
    btnDownload: TWebButton;
    btnUpload: TWebButton;
    btnScalePlus: TWebButton;
    btnFullScreen: TWebButton;
    btnScaleMinus: TWebButton;
    btnTrash: TWebButton;
    btnEdit: TWebButton;
    btnClone: TWebButton;
    btnVolumeUp: TWebButton;
    btnVolumeMute: TWebButton;
    btnVolumeDown: TWebButton;
    btnCursor: TWebButton;
    procedure WebFormCreate(Sender: TObject);
    procedure WebFormResize(Sender: TObject);
    procedure GeneratePositions;
    procedure DrawBackground;
    procedure StartAnimation;
    procedure StopAnimation;
    procedure Animate(Anim: Integer);
    procedure ConfigButton(btn: TWebButton; HexPosition: Integer; ClassName: String);
    procedure tmrStartupTimer(Sender: TObject);
    procedure btnMainClick(Sender: TObject);
    procedure btnScaleClick(Sender: TObject);
    procedure btnChangeClick(Sender: TObject);
    procedure btnVolumeClick(Sender: TObject);
    procedure btnScalePlusClick(Sender: TObject);
    procedure btnScaleMinusClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    Gongs: Array of TWebHTMLDiv;    // Gong defintion
    GongsP: Array of Integer;       // Position of Gong

    PositionsX: Array of Double;    // X Position
    PositionsY: Array of Double;    // Y Position
    PositionsR: Array of Integer;   // Row number
    PositionsC: Array of Integer;   // Column number
    PositionsV: Array of Boolean;   // Valid for Layout/Mouseover
    PositionsT: Array of Boolean;   // Valid Target for Drag/Swap
    PositionsG: Array of Integer;   // Gong # at a Position

    Animation:       Array[0..AnimatedElements] of Integer;      // Current Position of this animation
    AnimationDiv:    Array[0..AnimatedElements] of TWebHTMLDiv;  // <div> for this animation
    AnimationDir:    Array[0..AnimatedElements] of Integer;      // Direction animation is moving (clockwise, 0 is top left of hexagon)
    AnimationLast:   Array[0..AnimatedElements] of Integer;      // Last Position of this animation
    AnimationTimers: JSValue;                                    // Array of setInterval() timers currently active

    MainMode:   Boolean;   // State of Main button (top-left)
    ScaleMode:  Boolean;   // State of Scale button (top-right)
    ChangeMode: Boolean;   // State of Change button (bottom-right)
    VolumeMode: Boolean;   // State of Volume button (bottom-left)
    LastClick:  TDateTime; // Used to block clicks from happening before animations are complete.

    ZoomLevel: Integer;   // Number of hexagons in top row (always an odd number)
    HexRadius: Double;    // Radius of one hexagon (width = 2x)
    RowCount: Integer;    // Number of rows (includes odd and even)
    ColCount: Integer;    // Number of columns (just the number of hexagons in first row, always odd)
    MarginTop: Double;    // How much of an offset to center the hexagons vertically

  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.WebFormCreate(Sender: TObject);
begin

  // Initial States
  MainMode := False;
  ScaleMode := False;
  ChangeMode := False;
  VolumeMode := False;
  ZoomLevel := 7;
  LastClick := Now;


  // Initialize AnimationTimers array
  asm this.AnimationTimers = []; end;


  // JavaScript Sleep Function
  asm window.sleep = async function(msecs) {return new Promise((resolve) => setTimeout(resolve, msecs)); } end;


  // Deal with button clicks that aren't on buttons directly
  asm
    divBackground.addEventListener('click', (event) => {
      if ((event.target.classList.contains('Valid')) &&
          (!(
           event.target.classList.contains('Button') ||
           event.target.classList.contains('MainButton') ||
           event.target.parentElement.classList.contains('Button') ||
           event.target.parentElement.classList.contains('MainButton')
          )) && This.ChangeMode == true) {
        if (event.target.classList.contains('Valid')) {
          if (This.PositionsG[btnCursor.parentElement.getAttribute('position')] == -1) {
            btnCursor.parentElement.style.removeProperty('animation-name');
          }
          event.target.appendChild(btnCursor);
          btnCursor.setAttribute('position',event.target.getAttribute('position'));
          btnCursor.parentElement.style.setProperty('animation-name','jiggle');
          btnCursor.style.setProperty('z-index','5');
        }
      }
      else if (! (
         event.target.classList.contains('Button') ||
         event.target.classList.contains('MainButton')
        )) {
        This.btnMainClick(null);
        This.btnScaleClick(null);
        This.btnChangeClick(null);
        This.btnVolumeClick(null);
      }
    });
  end;


  // Configure InteractJS for Drag & Swap functionality
  asm
    var This = pas.Unit1.Form1;
    interact('.dragswap')
      .on('click', event => {
          event.stopImmediatePropagation();
          if (This.PositionsG[btnCursor.parentElement.getAttribute('position')] == -1) {
            btnCursor.parentElement.style.removeProperty('animation-name');
          }
          event.target.parentElement.appendChild(btnCursor);
          btnCursor.setAttribute('position',event.target.parentElement.getAttribute('position'));
          btnCursor.parentElement.style.setProperty('animation-name','jiggle');
        }, { capture: true })

      .draggable({
        inertia: true,
        modifiers: [],

        onstart: function(event) {
          // When dragging begins, remove element from its hexagon and add it to the background at the same spot
          if (event.target.classList.contains('CursorButton')) {
            btnCursor.parentElement.style.removeProperty('animation-name');
          } else {
            event.target.parentElement.style.removeProperty('animation-name');
          }
          divBackground.appendChild(event.target);
          event.target.setAttribute('data-x',This.PositionsX[event.target.getAttribute('position')]);
          event.target.setAttribute('data-y',This.PositionsY[event.target.getAttribute('position')]);
          event.target.style.setProperty('top','0px');
          event.target.style.setProperty('left','0px');

          // Ensure that it is above everything else, and stop whatever jiggling might be going on
          event.target.style.setProperty('z-index',10);
          event.target.parentElement.style.removeProperty('animation-name');
        },

        onend: async function(event) {
          // When dragging ends, apply the InteractJS movement data to the element
          var PosX = parseFloat((parseFloat(event.target.style.left.replace('px','')) + parseFloat(event.target.getAttribute('data-x'))));
          var PosY = parseFloat((parseFloat(event.target.style.top.replace('px','')) + parseFloat(event.target.getAttribute('data-y'))));
          event.target.style.setProperty('top', PosY + 'px');
          event.target.style.setProperty('left', PosX + 'px');
          event.target.style.removeProperty('transform');
          event.target.removeAttribute('data-x');
          event.target.removeAttribute('data-y');

          btnCursor.style.setProperty('top', '-1000px');
          btnCursor.style.setProperty('left', '-1000px');


          // Find nearest Position
          var minDistance = 999999;
          var NewX = 0
          var NewY = 0;
          var dist = 0;
          var position = -1;
          for (var i = 0; i < This.PositionsX.length; i++) {
            dist = Math.sqrt(Math.pow(This.PositionsX[i] - PosX,2) + Math.pow(This.PositionsY[i] - PosY,2));
            if ((dist < minDistance) && (This.PositionsT[i] == true)) {
              minDistance = dist;
              NewX = This.PositionsX[i];
              NewY = This.PositionsY[i];
              position = i;
            }
          }

          // If we're just draging the cursor around....
          if (event.target.classList.contains('CursorButton')) {
            document.getElementById('BG-'+position).appendChild(btnCursor);
            btnCursor.setAttribute('position',position);
            btnCursor.style.setProperty('top','0px');
            btnCursor.style.setProperty('left','0px');
            btnCursor.style.setProperty('z-index','5');
            btnCursor.parentElement.style.setProperty('animation-name','jiggle');
          }

          else {

            // Figure out where it started from
            var gongid = event.target.getAttribute('gongid');
            var oldposition = This.GongsP[gongid];

            // When dropping on populated Position, prepare to swap
            if ((This.PositionsG[position] !== gongid) && (This.PositionsG[position] !== -1)) {

              // Get the element that we're swapping
              var swapid = This.PositionsG[position];
              var swapel = document.getElementById('Gong-'+swapid);

              // And this is where it is ultimately headed
              var OldX = This.PositionsX[oldposition];
              var OldY = This.PositionsY[oldposition];

              // Move it from its hexagon container into the same background as the element we're working wtih
              divBackground.appendChild(swapel);
              swapel.style.setProperty('top', NewY + 'px');
              swapel.style.setProperty('left', NewX + 'px');
              swapel.style.setProperty('transition','top 0.2s linear, left 0.2s linear');
              swapel.style.setProperty('z-index',9);
              swapel.parentElement.style.removeProperty('animation-name');

              // Update data about this element we're swapping
              swapel.setAttribute('position',oldposition);
              swapel.setAttribute('row',This.PositionsR[oldposition]);
              swapel.setAttribute('column',This.PositionsC[oldposition]);
              This.GongsP[swapid] = oldposition;
              This.PositionsG[oldposition] = swapid;
            }

            // When dropping on empty positionm, just update the old position information
            else if (This.PositionsG[position] == -1) {
              This.PositionsG[oldposition] = -1
            }

            if (This.PositionsG[btnCursor.getAttribute('position')] == -1) {
              document.getElementById('BG-'+btnCursor.getAttribute('position')).style.removeProperty('animation-name');
            }

            // Update Position Information
            This.PositionsG[position] = gongid;
            This.GongsP[gongid] = position;
            event.target.setAttribute('position',position);
            event.target.setAttribute('row',This.PositionsR[position]);
            event.target.setAttribute('column',This.PositionsC[position]);

            // This gives the page a chance to update everything we just changed
            await sleep(0);

            // Move our element to its new position
            event.target.style.setProperty('transition','top 0.2s linear, left 0.2s linear');
            event.target.style.setProperty('top', NewY + 'px');
            event.target.style.setProperty('left', NewX + 'px');

            // After it has been moved, drop it back into its hexagon holder
            // Also, move the cursor to this position as well
            setTimeout(function(){
              event.target.style.removeProperty('transition');
              event.target.style.setProperty('top','0px');
              event.target.style.setProperty('left','0px');
              document.getElementById('BG-'+position).appendChild(event.target);
              event.target.parentElement.style.setProperty('animation-name','jiggle');

              btnCursor.setAttribute('position',position);
              btnCursor.style.setProperty('top', '0px');
              btnCursor.style.setProperty('left','0px');
              document.getElementById('BG-'+position).appendChild(btnCursor);

            },200);

            // If we were swapping elements, move the swapped element to the prior location
            // and then drop it into its hexagon holder too
            if (swapel !== undefined) {
              swapel.style.top = OldY + 'px';
              swapel.style.left = OldX + 'px';
              setTimeout(function(){
                swapel.style.removeProperty('transition');
                swapel.style.setProperty('top','0px');
                swapel.style.setProperty('left','0px');
                document.getElementById('BG-'+oldposition).appendChild(swapel);
                swapel.parentElement.style.setProperty('animation-name','jiggle');
              },400);
            }
          }
        },
        listeners: {
          move: dragMoveListener
        }
      });

    function dragMoveListener (event) {
      var target = event.target
      var x = (parseFloat(target.getAttribute('data-x')) || 0) + event.dx
      var y = (parseFloat(target.getAttribute('data-y')) || 0) + event.dy
      target.style.transform = 'translate(' + x + 'px, ' + y + 'px)'
      target.setAttribute('data-x', x)
      target.setAttribute('data-y', y)
    };
    window.dragMoveListener = dragMoveListener

  end;
end;

procedure TForm1.WebFormResize(Sender: TObject);
begin

  // Check that app has initialized before doing this
  if Length(PositionsX) > 0 then
  begin
    StopAnimation;
    GeneratePositions;
    DrawBackground;
    StartAnimation;
  end;

end;

procedure TForm1.tmrStartupTimer(Sender: TObject);
begin

  tmrStartup.Enabled := False;

  // Perform initial display configuraiton
  GeneratePositions;
  DrawBackground;

  // Hide all secondary buttons
  btnMainClick(nil);
  btnScaleClick(nil);
  btnChangeClick(nil);
  btnVolumeClick(nil);

  // Get the animation rolling
  StartAnimation;

end;



procedure TForm1.btnEditClick(Sender: TObject);
var
  CursorPosition: Integer;
  GongID: Integer;
begin
  CursorPosition := StrToInt(btnCursor.ElementHandle.getAttribute('position'));

  // Position of the cursor
  if CursorPosition <> -1 then
  begin

    // New Gong
    if PositionsG[CursorPosition] = -1 then
    begin
      GongID := Length(Gongs);
      SetLength(Gongs, GongID + 1);
      SetLength(GongsP, GongID + 1);
      PositionsG[CursorPosition] := GongID;
      GongsP[GongID] := CursorPosition;

      Gongs[GongID] := TWebHTMLDiv.Create('Gong-'+IntToStr(GongID));
      Gongs[GongID].Parent := divButtons;

      Gongs[GongID].ElementHandle.setAttribute('gongid',IntToStr(GongID));
      Gongs[GongID].ElementHandle.setAttribute('position',IntToStr(CursorPosition));
      Gongs[GongID].ElementHandle.setAttribute('row',IntToStr(PositionsR[CursorPosition]));
      Gongs[GongID].ElementHandle.setAttribute('column',IntToStr(PositionsC[CursorPosition]));

      Gongs[GongID].ElementHandle.classList.Add('Gong','d-flex','justify-content-center','align-items-center','dragswap');

      Gongs[GongID].ElementHandle.style.setProperty('top','0px');
      Gongs[GongID].ElementHandle.style.setProperty('left','0px');
      Gongs[GongID].ElementHandle.style.setProperty('width',FloatToStrF(HexRadius * 2,ffGeneral,5,3)+'px');
      Gongs[GongID].ElementHandle.style.setProperty('height',FloatToStrF(HexRadius * 2,ffGeneral,5,3)+'px');
      Gongs[GongID].ElementHandle.style.setProperty('z-index','10');
      Gongs[GongID].ElementHandle.style.setProperty('background','radial-gradient(#00000080,#FFFFFF80)');
      Gongs[GongID].ElementHandle.style.setProperty('font-size',IntToStr(Trunc(HexRadius))+'px');

      Gongs[GongID].HTML.Text := '<div class="GongContent" style="color:white;">'+IntToStr(GongID+1)+'</div>';

      document.getElementById('BG-'+IntToStr(CursorPosition)).appendChild(Gongs[GongID].ElementHandle);
      (document.getElementById('BG-'+IntToStr(CursorPosition)) as TJSHTMLElement).style.setProperty('animation-name','jiggle');
    end

    // Edit Gong
    else
    begin

    end;
  end;
end;

procedure TForm1.btnMainClick(Sender: TObject);
begin

  if (MillisecondsBetween(Now, LastClick) > 500) then
  begin
    LastClick := Now;

    if (Sender = btnMain) and (MainMode = False) then
    begin
      MainMode := True;
      btnMain.ElementHandle.classList.add('Selected');
      btnShare.ElementHandle.style.setProperty('visibility','visible');
      btnDownload.ElementHandle.style.setProperty('visibility','visible');
      btnUpload.ElementHandle.style.setProperty('visibility','visible');

      asm
        setTimeout(function() { btnShare.style.setProperty('opacity','0.2'); }, 0 );
        setTimeout(function() { btnDownload.style.setProperty('opacity','0.2'); }, 200 );
        setTimeout(function() { btnUpload.style.setProperty('opacity','0.2'); }, 400 );
      end;

      btnScaleClick(btnMain);
      btnChangeClick(btnMain);
      btnVolumeClick(btnMain);
    end
    else
    begin
      MainMode := False;
      btnMain.ElementHandle.classList.remove('Selected');
      asm
        setTimeout(function() { btnShare.style.setProperty('opacity','0'); }, 0 );
        setTimeout(function() { btnDownload.style.setProperty('opacity','0'); }, 200 );
        setTimeout(function() { btnUpload.style.setProperty('opacity','0'); }, 400 ) ;
        setTimeout(function() {
          btnShare.style.setProperty('visibility','hidden');
          btnDownload.style.setProperty('visibility','hidden');
          btnUpload.style.setProperty('visibility','hidden');
        },1000);
      end;
    end;
  end;

end;

procedure TForm1.btnScaleClick(Sender: TObject);
begin

  if (MillisecondsBetween(Now, LastClick) > 500) then
  begin
    LastClick := Now;

    if (Sender = btnScale) and (ScaleMode = False) then
    begin
      ScaleMode := True;
      btnScale.ElementHandle.classList.add('Selected');
      btnScalePlus.ElementHandle.style.setProperty('visibility','visible');
      btnFullScreen.ElementHandle.style.setProperty('visibility','visible');
      btnScaleMinus.ElementHandle.style.setProperty('visibility','visible');

      asm
        setTimeout(function() { btnScalePlus.style.setProperty('opacity','0.2'); }, 0 );
        setTimeout(function() { btnFullScreen.style.setProperty('opacity','0.2'); }, 200 );
        setTimeout(function() { btnScaleMinus.style.setProperty('opacity','0.2'); }, 400 );
      end;

      btnChangeClick(btnScale);
      btnVolumeClick(btnScale);
      btnMainClick(btnScale);
    end
    else
    begin
      ScaleMode := False;
      btnScale.ElementHandle.classList.remove('Selected');
      asm
        setTimeout(function() { btnScalePlus.style.setProperty('opacity','0'); }, 0 );
        setTimeout(function() { btnFullScreen.style.setProperty('opacity','0'); }, 200 );
        setTimeout(function() { btnScaleMinus.style.setProperty('opacity','0'); }, 400 );
        setTimeout(function() {
          btnScalePlus.style.setProperty('visibility','hidden');
          btnFullScreen.style.setProperty('visibility','hidden');
          btnScaleMinus.style.setProperty('visibility','hidden');
        },1000);
      end;
    end;
  end;

end;

procedure TForm1.btnChangeClick(Sender: TObject);
var
  i: Integer;
begin

  if (MillisecondsBetween(Now, LastClick) > 500) then
  begin
    LastClick := Now;

    if (Sender = btnChange) and (ChangeMode = False) then
    begin
      ChangeMode := True;

      i := 0;
      while i < Length(Gongs) do
      begin
        Gongs[i].ElementHandle.classList.add('dragswap');
        (Gongs[i].ElementHandle.parentElement as TJSHTMLElement).style.setProperty('animation-name','jiggle');
        i := i + 1;
      end;

      btnChange.ElementHandle.classList.add('Selected');
      btnTrash.ElementHandle.style.setProperty('visibility','visible');
      btnEdit.ElementHandle.style.setProperty('visibility','visible');
      btnClone.ElementHandle.style.setProperty('visibility','visible');

      asm
        setTimeout(function() { btnTrash.style.setProperty('opacity','0.2'); }, 400 );
        setTimeout(function() { btnEdit.style.setProperty('opacity','0.2'); }, 200 );
        setTimeout(function() { btnClone.style.setProperty('opacity','0.2'); }, 0 );
      end;

      btnSCaleClick(btnChange);
      btnVolumeClick(btnChange);
      btnMainClick(btnChange);
    end
    else
    begin
      ChangeMode := False;

      i := 0;
      while i < Length(Gongs) do
      begin
        Gongs[i].ElementHandle.classList.remove('dragswap');
        (Gongs[i].ElementHandle.parentElement as TJSHTMLElement).style.removeProperty('animation-name');
        i := i + 1;
      end;

      divButtons.ElementHandle.appendChild(btnCursor.ElementHandle);
      btnCursor.ElementHandle.setAttribute('position','-1');
      btnChange.ElementHandle.classList.remove('Selected');
      asm
        setTimeout(function() { btnTrash.style.setProperty('opacity','0'); }, 400 );
        setTimeout(function() { btnEdit.style.setProperty('opacity','0'); }, 200 );
        setTimeout(function() { btnClone.style.setProperty('opacity','0'); }, 0 );
        setTimeout(function() {
          btnTrash.style.setProperty('visibility','hidden');
          btnEdit.style.setProperty('visibility','hidden');
          btnClone.style.setProperty('visibility','hidden');
        },1000);
      end;
    end;
  end;

end;

procedure TForm1.btnVolumeClick(Sender: TObject);
begin

  if (MillisecondsBetween(Now, LastClick) > 500) then
  begin
    LastClick := Now;

    if (Sender = btnVolume) and (VolumeMode = False) then
    begin
      VolumeMode := True;
      btnVolume.ElementHandle.classList.add('Selected');
      btnVolumeUp.ElementHandle.style.setProperty('visibility','visible');
      btnVolumeMute.ElementHandle.style.setProperty('visibility','visible');
      btnVolumeDown.ElementHandle.style.setProperty('visibility','visible');

      asm
        setTimeout(function() { btnVolumeUp.style.setProperty('opacity','0.2'); }, 400 );
        setTimeout(function() { btnVolumeMute.style.setProperty('opacity','0.2'); }, 200 );
        setTimeout(function() { btnVolumeDown.style.setProperty('opacity','0.2'); }, 0 );
      end;

      btnMainClick(btnVolume);
      btnSCaleClick(btnVolume);
      btnChangeClick(btnVolume);
    end
    else
    begin
      VolumeMode := False;
      btnVolume.ElementHandle.classList.remove('Selected');
      asm
        setTimeout(function() { btnVolumeUp.style.setProperty('opacity','0'); }, 400 );
        setTimeout(function() { btnVolumeMute.style.setProperty('opacity','0'); }, 200 );
        setTimeout(function() { btnVolumeDown.style.setProperty('opacity','0'); }, 0 );
        setTimeout(function() {
          btnVolumeUp.style.setProperty('visibility','hidden');
          btnVolumeMute.style.setProperty('visibility','hidden');
          btnVolumeDown.style.setProperty('visibility','hidden');
        },1000);
      end;
    end;
  end;

end;

procedure TForm1.btnScaleMinusClick(Sender: TObject);
var
  i: Integer;
  j: integer;
  r: integer;
  c: integer;
begin

  if Zoomlevel > 5 then
  begin
    ZoomLevel := ZoomLevel - 1;
    StopAnimation;
    GeneratePositions;

    // Update Gong Positions
    for i := 0 to Length(PositionsG) -1  do
      PositionsG[i] := -1;

    i := 0;
    while i < Length(Gongs) do
    begin
      r := StrToInt(Gongs[i].ElementHandle.getAttribute('row'));
      c := StrToInt(Gongs[i].ElementHandle.getAttribute('column'));
      j := 0;
      while ((PositionsR[j] <> r) or (PositionsC[j] <> c)) and (j < Length(PositionsR)) do
        j := j + 1;
      if j < Length(PositionsR) then
      begin
        GongsP[i] := j;
        PositionsG[GongsP[i]] := i;
        Gongs[i].ElementHandle.setAttribute('position', IntToStr(j));
        Gongs[i].ElementHandle.setAttribute('row', IntToStr(PositionsR[j]));
        Gongs[i].ElementHandle.setAttribute('column', IntToStr(PositionsC[j]));
      end;
      i := i + 1;
    end;

    DrawBackground;
    StartAnimation;
  end;

end;

procedure TForm1.btnScalePlusClick(Sender: TObject);
var
  i: Integer;
  j: integer;
  r: integer;
  c: integer;

begin

  if Zoomlevel < 20 then
  begin
    ZoomLevel := ZoomLevel + 1;
    StopAnimation;
    GeneratePositions;

    // Update Gong Positions within new hexagon arrangement

    for i := 0 to Length(PositionsG) -1  do
      PositionsG[i] := -1;

    i := 0;
    while i < Length(Gongs) do
    begin
      r := StrToInt(Gongs[i].ElementHandle.getAttribute('row'));
      c := StrToInt(Gongs[i].ElementHandle.getAttribute('column'));
      j := 0;
      while ((PositionsR[j] <> r) or (PositionsC[j] <> c)) and (j < Length(PositionsR)) do
        j := j + 1;
      if j < Length(PositionsR) then
      begin
        GongsP[i] := j;
        PositionsG[GongsP[i]] := i;
        Gongs[i].ElementHandle.setAttribute('position', IntToStr(j));
        Gongs[i].ElementHandle.setAttribute('row', IntToStr(PositionsR[j]));
        Gongs[i].ElementHandle.setAttribute('column', IntToStr(PositionsC[j]));
      end;
      i := i + 1;
    end;

    DrawBackground;
    StartAnimation;
  end;

end;

procedure TForm1.ConfigButton(btn: TWebButton; HexPosition: Integer; ClassName: String);
begin

  divButtons.ElementHAndle.appendChild(btn.ElementHandle);
  btn.ElementHandle.setAttribute('position',IntToStr(HexPosition));
  btn.ElementHandle.classList.Add(ClassName,'d-flex','justify-content-center','align-items-center');
  btn.ElementHandle.style.setProperty('top','0px');
  btn.ElementHandle.style.setProperty('left','0px');
  btn.ElementHandle.style.setProperty('width',FloatToStrF(HexRadius * 2,ffGeneral,5,3)+'px');
  btn.ElementHandle.style.setProperty('height',FloatToStrF(HexRadius * 2,ffGeneral,5,3)+'px');
  btn.ElementHandle.style.setProperty('font-size',IntToStr(Trunc(HexRadius))+'px');
  btn.Tag := HexPosition;

  if HexPosition >= 0 then PositionsT[HexPosition] := False;

end;

procedure TForm1.DrawBackground;
var
  I: Integer;
  S: String;
  Classes: String;

begin

  I := 0;
  S := '';

  ConfigButton(btnCursor, StrToIntDef(' '+btnCursor.ElementHandle.getAttribute('position'),-1), 'CursorButton');

  I := 0;
  while I < Length(Gongs) do
  begin
    divButtons.ElementHAndle.appendChild(Gongs[I].ElementHandle);
    I := I + 1;
  end;

  I := 0;
  while I < Length(PositionsX) do
  begin
    Classes := 'Invalid';
    if (PositionsR[I] >= 3) and
       (PositionsR[I] <= (RowCount + (RowCount mod 2) - 5)) and
       (PositionsC[I] >= ((PositionsR[I] + 1) mod 2)) and
       (PositionsC[i] <= (ColCount - ((PositionsR[i] + 1) mod 2))) then
    begin
      Classes := 'Valid';
      PositionsV[I] := True;
      PositionsT[I] := True;
    end
    else
    begin
      Classes := 'Invalid';
      PositionsV[I] := False;
      PositionsT[I] := False;
    end;

    if      (PositionsR[I] = 3) and (PositionsC[I] = 0)  then ConfigButton(btnMain,     I, 'MainButton')
    else if (PositionsR[I] = 3) and (PositionsC[I] = 1)  then ConfigButton(btnUpload,   I, 'Button')
    else if (PositionsR[I] = 4) and (PositionsC[I] = 1)  then ConfigButton(btnDownload, I, 'Button')
    else if (PositionsR[I] = 5) and (PositionsC[I] = 0)  then ConfigButton(btnShare,    I, 'Button')

    else if (PositionsR[I] = 3) and (PositionsC[I] = ColCount - 1) then ConfigButton(btnScale, I, 'MainButton')
    else if (PositionsR[I] = 3) and (PositionsC[I] = ColCount - 2) then ConfigButton(btnScalePlus, I, 'Button')
    else if (PositionsR[I] = 4) and (PositionsC[I] = ColCount - 1) then ConfigButton(btnFullScreen, I, 'Button')
    else if (PositionsR[I] = 5) and (PositionsC[I] = ColCount - 1) then ConfigButton(btnScaleMinus, I, 'Button')

    else if (PositionsR[I] = (RowCount + (RowCount mod 2) - 5)) and (PositionsC[I] = ColCount -1) then ConfigButton(btnChange, I, 'MainButton')
    else if (PositionsR[I] = (RowCount + (RowCount mod 2) - 5)) and (PositionsC[I] = ColCount -2) then ConfigButton(btnTrash, I, 'Button')
    else if (PositionsR[I] = (RowCount + (RowCount mod 2) - 6)) and (PositionsC[I] = ColCount -1) then ConfigButton(btnEdit, I, 'Button')
    else if (PositionsR[I] = (RowCount + (RowCount mod 2) - 7)) and (PositionsC[I] = ColCount -1) then ConfigButton(btnClone, I, 'Button')

    else if (PositionsR[I] = (RowCount + (RowCount mod 2) - 5)) and (PositionsC[I] = 0) then ConfigButton(btnVolume, I, 'MainButton')
    else if (PositionsR[I] = (RowCount + (RowCount mod 2) - 7)) and (PositionsC[I] = 0) then ConfigButton(btnVolumeUp, I, 'Button')
    else if (PositionsR[I] = (RowCount + (RowCount mod 2) - 6)) and (PositionsC[I] = 1) then ConfigButton(btnVolumeMute, I, 'Button')
    else if (PositionsR[I] = (RowCount + (RowCount mod 2) - 5)) and (PositionsC[I] = 1) then ConfigButton(btnVolumeDown, I, 'Button');

    S := S + '<div id="BG-'+IntToStr(I)+'" '+
                   'class="Hexagon '+Classes+'" '+
                   'row="'+IntToStr(PositionsR[I])+'" '+
                   'columm="'+IntToStr(PositionsC[I])+'" '+
                   'position="'+IntToStr(I)+'" '+
                   'style="position:absolute;'+
                          'font-size:'+IntToStr(Trunc(HexRadius))+'px;'+
                          'top:'+FloatToStrF(PositionsY[I],ffGeneral,5,3)+'px;'+
                          'left:'+FloatToSTrF(PositionsX[I],ffGeneral,5,3)+'px;'+
                          'width:'+FloatToStrF(HexRadius*2,ffGeneral,5,3)+'px;'+
                          'height:'+FloatToSTrf(HexRadius*2,ffGeneral,5,3)+'px;'+
                          'transform-origin:'+IntToStr(Trunc(10+Random(80)))+'% '+IntToStr(10+Random(80))+'%;'+
                          'animation-duration:'+FloatToSTr(0.40+Random*0.40)+'s;'+
                          'animation-iteration-count:'+'infinite;'+
                          'animation-timing-function:'+'ease-in-out;'+
                     '"></div>';
    I := I + 1;
  end;

  divBackground.HTML.Text := S;

  document.getElementById('BG-'+IntToStr(btnMain.Tag)).appendChild(btnMain.ElementHandle);
  document.getElementById('BG-'+IntToStr(btnShare.Tag)).appendChild(btnShare.ElementHandle);
  document.getElementById('BG-'+IntToStr(btnDownload.Tag)).appendChild(btnDownload.ElementHandle);
  document.getElementById('BG-'+IntToStr(btnUpload.Tag)).appendChild(btnUpload.ElementHandle);

  document.getElementById('BG-'+IntToStr(btnScale.Tag)).appendChild(btnScale.ElementHandle);
  document.getElementById('BG-'+IntToStr(btnScalePlus.Tag)).appendChild(btnScalePlus.ElementHandle);
  document.getElementById('BG-'+IntToStr(btnFullScreen.Tag)).appendChild(btnFullScreen.ElementHandle);
  document.getElementById('BG-'+IntToStr(btnScaleMinus.Tag)).appendChild(btnScaleMinus.ElementHandle);

  document.getElementById('BG-'+IntToStr(btnChange.Tag)).appendChild(btnChange.ElementHandle);
  document.getElementById('BG-'+IntToStr(btnTrash.Tag)).appendChild(btnTrash.ElementHandle);
  document.getElementById('BG-'+IntToStr(btnEdit.Tag)).appendChild(btnEdit.ElementHandle);
  document.getElementById('BG-'+IntToStr(btnClone.Tag)).appendChild(btnClone.ElementHandle);

  document.getElementById('BG-'+IntToStr(btnVolume.Tag)).appendChild(btnVolume.ElementHandle);
  document.getElementById('BG-'+IntToStr(btnVolumeUp.Tag)).appendChild(btnVolumeUp.ElementHandle);
  document.getElementById('BG-'+IntToStr(btnVolumeMute.Tag)).appendChild(btnVolumeMute.ElementHandle);
  document.getElementById('BG-'+IntToStr(btnVolumeDown.Tag)).appendChild(btnVolumeDown.ElementHandle);

  if StrToInt(btnCursor.ElementHandle.getAttribute('position')) <> -1
  then document.getElementById('BG-'+btnCursor.ElementHandle.getAttribute('position')).appendChild(btnCursor.ElementHandle);

  I := 0;
  while I < Length(Gongs) do
  begin
    Gongs[I].ElementHandle.style.setProperty('font-size',IntToStr(Trunc(HexRadius))+'px');
    Gongs[I].ElementHandle.style.setProperty('width',FloatToStrF(HexRadius * 2,ffGeneral,5,3)+'px');
    Gongs[I].ElementHandle.style.setProperty('height',FloatToStrF(HexRadius * 2,ffGeneral,5,3)+'px');
    document.GetElementById('BG-'+IntToStr(GongsP[I])).appendChild(Gongs[I].ElementHandle);
    I := I + 1;
  end;

end;

procedure TForm1.GeneratePositions;
var
  I: Integer;
  X: Double;
  Y: Double;

  WindowWidth: Double;
  WindowHeight: Double;

  LeftMargin: Double;

  VertOffset: Double;
  HorizOffset: Double;

begin

  // The space we have available
  WindowWidth := window.innerWidth;
  WindowHeight := window.innerHeight - 10;

  // Note: This is a radius (half hexagon), and we want to end on an odd
  // number. The .04 bit is that we have a slight gap (4%) between them.
  HexRadius := (WindowWidth - 20) / (3.04*ZoomLevel - 1);

  // Offset 10px from left/right
  LeftMargin := 10 - HexRadius*1.5;

  // How much we have to move X/Y after each position
  HorizOffset := HexRadius * 1.52;
  VertOffset := 1.05*HexRadius*Sqrt(3)/2;

  // Start in offset position because the first row will ultimately be clipped
  RowCount := 1;
  ColCount := 0;
  I := 0;

  X := LeftMargin + (RowCount mod 2)*HexRadius*1.52;
  Y := 0;

  while Y < WindowHeight + VertOffset*3 do
  begin

    // Adjust collection of arrays
    setLength(PositionsX, I+1);
    setLength(PositionsY, I+1);
    setLength(PositionsR, I+1);
    setLength(PositionsC, I+1);

    PositionsX[I] := X;
    PositionsY[I] := Y;
    PositionsR[I] := RowCount;
    PositionsC[I] := ColCount;
    PositionsV[I] := False;
    PositionsT[I] := False;
    PositionsG[I] := -1;

    // Fill Row, then wrap to odd or even row
    if (X+HexRadius*3 < WindowWidth) then
    begin
      ColCount := ColCount + 1;
      X := X + HorizOffset * 2;
    end
    else
    begin
      ColCount := 0;
      RowCount := RowCount + 1;
      X := LeftMargin + (RowCount mod 2) * HorizOffset;
      Y := Y + VertOffset;
    end;

    I := I + 1;
  end;

  I := Length(PositionsY) -1;
  ColCount := ZoomLevel;

  // Adjust the top margin to account for an odd (blank) row at the bottom
  if (RowCount mod 2) = 1
  then MarginTop := 5+ -1.05*HexRadius/2 + (WindowHeight - PositionsY[I]) / 2
  else MarginTop := 5+ -1.05*HexRadius/2 + (WindowHeight - PositionsY[I-ColCount]) / 2;

  divBackground.ElementHandle.style.setProperty('margin-top',FloatToStrF(MarginTop,ffGeneral,5,3)+'px');

end;

procedure TForm1.StartAnimation;
var
  I: Integer;
  StartPosition: Integer;
  MidX: Double;
  MidY: Double;

begin

  StartPosition := -1;
  MidX := (window.innerWidth / 2) - HexRadius;
  MidY := (window.innerHeight / 2) - HexRadius*Sqrt(3)/2 - MarginTop;

  // Find middle position
  asm
    var minDistance = Number.MAX_SAFE_INTEGER;
    var NewX = 0
    var NewY = 0;
    var dist = 0;
    for (var i = 0; i < this.PositionsX.length; i++) {
      dist = Math.sqrt(Math.pow(this.PositionsX[i] - MidX,2) + Math.pow(this.PositionsY[i] - MidY,2));
      if (dist < minDistance) {
        minDistance = dist;
        NewX = this.PositionsX[i];
        NewY = this.PositionsY[i];
        StartPosition = i;
      }
    }
    MidX = NewX;
    MidY = NewY;
  end;

  for I := 0 to AnimatedElements do
  begin
    // Create element if it is our first time through
    if not(Assigned(AnimationDiv[i])) then
    begin
      AnimationDiv[i] := TWebHTMLDiv.Create('divAnimation'+IntToStr(i));
    end;

    // Set the size - might have changed since last time
    AnimationDiv[I].Top := Trunc(MidY + MarginTop - 5);
    AnimationDiv[I].Left := Trunc(MidX -3);
    AnimationDiv[I].Width := Trunc(6+HexRadius*2);
    AnimationDiv[I].Height := Trunc(10+HexRadius*2);

    AnimationDiv[i].Parent := divAnimParent;
    AnimationDiv[i].ElementPosition := epAbsolute;
    AnimationDiv[i].ElementClassName := 'Animation';
    AnimationDiv[I].ElementHandle.style.setProperty('opacity','0.9');
    AnimationDiv[I].ElementHandle.style.setProperty('transition','top '+IntToStr(1000+I*200)+'ms linear, left '+IntToStr(1000+I*200)+'ms linear, opacity 5s');

    // Start at the center - 6 elements start moving in 6 directions
    Animation[I] := StartPosition;
    AnimationLast[I] := -1;
    AnimationDir[I] := I;

    // Launch Animation Timers
    asm
      const index = I;
      const This = this;
      var timer = setInterval(function() {
        This.Animate(index);
      },1050 + index*200);
      this.AnimationTimers.push(timer);
    end;

  end;
end;

procedure TForm1.StopAnimation;
begin

  asm
    while (this.AnimationTimers.length > 0) {
      clearInterval(this.AnimationTimers.pop());
    }
  end;

end;

procedure TForm1.Animate(Anim: Integer);
var
  I: Integer;
  CurrPos: Integer;
  Direction: Integer;
  NextPos: Integer;
  Loop: Integer;

begin

  CurrPos := Animation[Anim];
  NextPos := CurrPos;

  Direction := -1;
  Loop := 0;

  while (Direction = -1) and (Loop < 20) do
  begin
    if (Loop = 0) and (Random > 0.1)
    then Direction := AnimationDir[Anim]    // Mostly go in same direction until it isn't possible.  But only mostly.
    else Direction := Trunc(Random*5.999);  // Veer off in one of 6 available random directions.

    // Determine Next Position based on Current Position and a Direction
    if      Direction = 0 then NextPos := CurrPos - ColCount - 1      // Top Left
    else if Direction = 1 then NextPos := CurrPos - ColCount * 2 - 1  // Top
    else if Direction = 2 then NextPos := CurrPos - ColCount + 0      // Top Right
    else if Direction = 3 then NextPos := CurrPos + ColCount + 1      // Bottom Right
    else if Direction = 4 then NextPos := CurrPos + ColCount * 2 + 1  // Bottom
    else if Direction = 5 then NextPos := CurrPos + ColCount + 0;     // Bottom Left

    // Check if Next Position is a valid Position
    if (NextPos < 0) or (NextPos > (Length(PositionsV) - 1)) then Direction := -1   // Position Range (code saftey check)
    else if PositionsV[NextPos] = False then Direction := -1                        // Must move to a Valid position
    else if NextPos = AnimationLast[Anim] then Direction := -1;                     // Must not move back where we just came from

    // Try to avoid collisions, but don't try too hard
    if (Direction <> -1) and (Loop <= 3) then
      for I := 0 to AnimatedElements do
        if NextPos = Animation[I] then Direction := -1;

    // If we haven't come up with a better move, than stay put for now
    if Direction = -1
    then NextPos := CurrPos;

    Loop := Loop + 1;
  end;

  // Trigger the Movement
  AnimationDiv[Anim].ElementHandle.style.setProperty('top',FloatToSTrF(PositionsY[NextPos] + MarginTop - 5,ffGeneral,5,3)+'px');
  AnimationDiv[Anim].ElementHandle.style.setProperty('left',FloatToSTrF(PositionsX[NextPos] - 3,ffGeneral,5,3)+'px');

  // Set Animation States for next time
  AnimationDir[Anim] := Direction;
  AnimationLast[Anim] := Animation[Anim];
  Animation[Anim] := NextPos;

end;

end.