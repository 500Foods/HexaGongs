unit Unit1;

interface

uses
  System.SysUtils, System.Classes, System.Types, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, WEBLib.WebCtrls,
  WEBLib.ExtCtrls, JSDelphiSystem, Vcl.StdCtrls, WEBLib.StdCtrls;

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
    procedure GeneratePositions;
    procedure DrawBackground;
    procedure StartAnimation;
    procedure StopAnimation;
    procedure WebFormCreate(Sender: TObject);
    procedure WebFormResize(Sender: TObject);
    procedure Animate(Anim: Integer);
    procedure ConfigButton(btn: TWebButton; HexPosition: Integer; ClassName: String);
    procedure tmrStartupTimer(Sender: TObject);
    procedure btnMainClick(Sender: TObject);
    procedure btnScaleClick(Sender: TObject);
    procedure btnVolumeClick(Sender: TObject);
    procedure btnScalePlusClick(Sender: TObject);
    procedure btnScaleMinusClick(Sender: TObject);
    procedure btnChangeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PositionsX: Array of Double;
    PositionsY: Array of Double;
    PositionsR: Array of Integer;
    PositionsC: Array of Integer;
    PositionsV: Array of Boolean;

    ZoomLevel: Integer;
    HexRadius: Double;
    RowCount: Integer;
    ColCount: Integer;
    MarginTop: Double;

    Animation: Array[0..AnimatedElements] of Integer;
    AnimationDiv : Array[0..AnimatedElements] of TWebHTMLDiv;
    AnimationDir: Array[0..AnimatedElements] of Integer;
    AnimationLast: Array[0..AnimatedElements] of Integer;
    AnimationTimers: JSValue;
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.WebFormCreate(Sender: TObject);
begin

  // Initial ZoomLevel
  ZoomLevel := 7;

  // Initialize AnimationTimers array
  asm this.AnimationTimers = []; end;

  asm
    divBackground.addEventListener('click', (event) => {
      if (! (
         event.target.classList.contains('Button') ||
         event.target.classList.contains('MainButton') ||
         event.target.parentElement.classList.contains('Button') ||
         event.target.parentElement.classList.contains('MainButton')
        )) {
        var This = pas.Unit1.Form1;
        This.btnMainClick(null);
        This.btnScaleClick(null);
        This.btnChangeClick(null);
        This.btnVolumeClick(null);
      }
    });
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

procedure TForm1.btnChangeClick(Sender: TObject);
begin

  if (Sender = btnChange) then
  begin
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

procedure TForm1.btnMainClick(Sender: TObject);
begin

  if (Sender = btnMain) then
  begin
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

procedure TForm1.btnScaleClick(Sender: TObject);
begin

  if (Sender = btnScale) then
  begin
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

procedure TForm1.btnScaleMinusClick(Sender: TObject);
begin

  if Zoomlevel > 5 then
  begin
    ZoomLevel := ZoomLevel - 1;
    StopAnimation;
    GeneratePositions;
    DrawBackground;
    StartAnimation;
  end;

end;

procedure TForm1.btnScalePlusClick(Sender: TObject);
begin

  if Zoomlevel < 20 then
  begin
    ZoomLevel := ZoomLevel + 1;
    StopAnimation;
    GeneratePositions;
    DrawBackground;
    StartAnimation;
  end;

end;

procedure TForm1.btnVolumeClick(Sender: TObject);
begin

  if (Sender = btnVolume) then
  begin
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

procedure TForm1.ConfigButton(btn: TWebButton; HexPosition: Integer; ClassName: String);
begin

  btn.Parent := divButtons;
  btn.ElementHandle.classList.Add(ClassName,'d-flex','justify-content-center','align-items-center');
  btn.ElementHandle.style.setProperty('top','0px');
  btn.ElementHandle.style.setProperty('left','0px');
  btn.ElementHandle.style.setProperty('width',FloatToStrF(HexRadius * 2,ffGeneral,5,3)+'px');
  btn.ElementHandle.style.setProperty('height',FloatToStrF(HexRadius * 2,ffGeneral,5,3)+'px');
  btn.ElementHandle.style.setProperty('font-size',IntToStr(Trunc(HexRadius))+'px');
  btn.Tag := HexPosition;

end;

procedure TForm1.DrawBackground;
var
  I: Integer;
  S: String;
  Classes: String;

begin

  I := 0;
  S := '';

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
    end
    else
    begin
      Classes := 'Invalid';
      PositionsV[I] := False;
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
                   'RowNum="'+IntToStr(PositionsR[I])+'" '+
                   'ColNum="'+IntToStr(PositionsC[I])+'" '+
                   'style="position:absolute;'+
                          'top:'+FloatToStrF(PositionsY[I],ffGeneral,5,3)+'px;'+
                          'left:'+FloatToSTrF(PositionsX[I],ffGeneral,5,3)+'px;'+
                          'width:'+FloatToStrF(HexRadius*2,ffGeneral,5,3)+'px;'+
                          'height:'+FloatToSTrf(HexRadius*2,ffGeneral,5,3)+'px;"></div>';
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
  WindowHeight := window.innerHeight;

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
  then MarginTop := -1.05*HexRadius/2 + (WindowHeight - PositionsY[I]) / 2
  else MarginTop := -1.05*HexRadius/2 + (WindowHeight - PositionsY[I-ColCount]) / 2;

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
  CurrRow: Integer;
  CurrCol: Integer;
  Direction: Integer;
  NextPos: Integer;
  Loop: Integer;

begin

  CurrPos := Animation[Anim];
  CurrRow := PositionsR[Animation[Anim]];
  CurrCol := PositionsC[Animation[Anim]];
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

//  asm
//    console.log('['+this.ColCount+','+this.RowCount+']['+CurrCol+','+CurrRow+'] from: '+this.Animation[Anim]+' to '+NextPos+' via '+Direction');
//  end;

  // Trigger the Movement
  AnimationDiv[Anim].ElementHandle.style.setProperty('top',FloatToSTrF(PositionsY[NextPos] + MarginTop - 5,ffGeneral,5,3)+'px');
  AnimationDiv[Anim].ElementHandle.style.setProperty('left',FloatToSTrF(PositionsX[NextPos] - 3,ffGeneral,5,3)+'px');

  // Set Animation States for next time
  AnimationDir[Anim] := Direction;
  AnimationLast[Anim] := Animation[Anim];
  Animation[Anim] := NextPos;

end;

end.