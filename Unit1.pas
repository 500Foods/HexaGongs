unit Unit1;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Types,
  System.DateUtils,
  System.Math,

  JS,
  Web,
  JSDelphiSystem,

  Vcl.Controls,
  Vcl.StdCtrls,

  WEBLib.JSON,
  WEBLib.Graphics,
  WEBLib.Controls,
  WEBLib.Forms,
  WEBLib.Dialogs,
  WEBLib.WebCtrls,
  WEBLib.ExtCtrls,
  WEBLib.StdCtrls,
  WEBLib.ComCtrls;

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
    divOptions: TWebHTMLDiv;
    divOptionsList: TWebHTMLDiv;
    pageControl: TWebPageControl;
    pageName: TWebTabSheet;
    pageBackground: TWebTabSheet;
    pageImage: TWebTabSheet;
    btnOptionsName: TWebButton;
    btnOptionsBackground: TWebButton;
    btnOptionsImage: TWebButton;
    btnOptionsAudio: TWebButton;
    btnOptionsOK: TWebButton;
    btnOptionsCancel: TWebButton;
    btnOptionsSettings: TWebButton;
    divOptionsBGBorder: TWebHTMLDiv;
    divShade: TWebHTMLDiv;
    pageAudio: TWebTabSheet;
    pageSettings: TWebTabSheet;
    divTitleHolder: TWebHTMLDiv;
    editTitle: TWebEdit;
    WebHTMLDiv1: TWebHTMLDiv;
    WebLabel1: TWebLabel;
    WebHTMLDiv2: TWebHTMLDiv;
    WebLabel2: TWebLabel;
    WebHTMLDiv3: TWebHTMLDiv;
    editHexName: TWebEdit;
    divOptionsCursor: TWebHTMLDiv;
    WebHTMLDiv4: TWebHTMLDiv;
    WebLabel3: TWebLabel;
    WebHTMLDiv5: TWebHTMLDiv;
    WebHTMLDiv6: TWebHTMLDiv;
    WebLabel4: TWebLabel;
    memoHexDescHolder: TWebHTMLDiv;
    memoHexDesc: TWebMemo;
    memoProjDesc: TWebMemo;
    divOptionsBG: TWebHTMLDiv;
    WebHTMLDiv7: TWebHTMLDiv;
    WebLabel5: TWebLabel;
    WebHTMLDiv11: TWebHTMLDiv;
    divOptionsBGRadial: TWebHTMLDiv;
    divOptionsBGRadialLabel: TWebLabel;
    divOptionsBGLinear: TWebHTMLDiv;
    divOptionsBGLinearLabel: TWebLabel;
    divOptionsBGSolid: TWebHTMLDiv;
    divOptionsBGSolidLabel: TWebLabel;
    divSelectColor: TWebHTMLDiv;
    labelSelectColor: TWebLabel;
    WebHTMLDiv8: TWebHTMLDiv;
    WebLabel6: TWebLabel;
    WebHTMLDiv9: TWebHTMLDiv;
    WebHTMLDiv10: TWebHTMLDiv;
    WebLabel7: TWebLabel;
    WebHTMLDiv13: TWebHTMLDiv;
    WebLabel8: TWebLabel;
    WebHTMLDiv14: TWebHTMLDiv;
    WebLabel10: TWebLabel;
    WebHTMLDiv15: TWebHTMLDiv;
    WebLabel11: TWebLabel;
    WebHTMLDiv16: TWebHTMLDiv;
    WebHTMLDiv17: TWebHTMLDiv;
    WebLabel12: TWebLabel;
    WebHTMLDiv18: TWebHTMLDiv;
    WebLabel13: TWebLabel;
    WebHTMLDiv19: TWebHTMLDiv;
    WebLabel14: TWebLabel;
    divSettingsBGETitle: TWebHTMLDiv;
    labelSettingsBGETitle: TWebLabel;
    WebHTMLDiv21: TWebHTMLDiv;
    WebLabel16: TWebLabel;
    divSettingsBGEChoices: TWebHTMLDiv;
    divOptionsBGENone: TWebHTMLDiv;
    labelOptionsBGENone: TWebLabel;
    divOptionsBGESix: TWebHTMLDiv;
    labelOptionsBGESix: TWebLabel;
    divOptionsBGETwelve: TWebHTMLDiv;
    labelOptionsBGETwelve: TWebLabel;
    divOptionsBGEEighteen: TWebHTMLDiv;
    labelOptionsBGEEighteen: TWebLabel;
    divImageSource: TWebHTMLDiv;
    editImageSource: TWebEdit;
    WebHTMLDiv28: TWebHTMLDiv;
    divProxyDefault: TWebHTMLDiv;
    labelProxyDefault: TWebLabel;
    divProxyCustom: TWebHTMLDiv;
    labelProxyCustom: TWebLabel;
    divAudioSource: TWebHTMLDiv;
    editAudioSource: TWebEdit;
    divOptionsBGCustom: TWebHTMLDiv;
    divOptionsBGCustomLabel: TWebLabel;
    divCustomCSSTitle: TWebHTMLDiv;
    WebLabel22: TWebLabel;
    divCustomCSSHolder: TWebHTMLDiv;
    memoCustomCSS: TWebMemo;
    divProxyNone: TWebHTMLDiv;
    labelProxyNone: TWebLabel;
    divProxy: TWebHTMLDiv;
    editProxy: TWebEdit;
    divColorPicker1: TWebHTMLDiv;
    divColorPicker2: TWebHTMLDiv;
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
    procedure btnOptionsOKClick(Sender: TObject);
    procedure btnOptionsCancelClick(Sender: TObject);
    [async] procedure btnOptionsNameClick(Sender: TObject);
    [async] procedure btnOptionsBackgroundClick(Sender: TObject);
    [async] procedure btnOptionsImageClick(Sender: TObject);
    [async] procedure btnOptionsAudioClick(Sender: TObject);
    [async] procedure btnOptionsSettingsClick(Sender: TObject);
    procedure UpdateOptionsCursor;
    procedure UpdateColorPickerSize;
    procedure UpdateColorPickerRGB;
    procedure UpdateColorPickerHexagon;
    procedure ColorSelected(ColorName: String; ColorValue: String; ColorIndex: Integer);
    procedure divOptionsBGRadialClick(Sender: TObject);
    procedure divOptionsBGLinearClick(Sender: TObject);
    procedure divOptionsBGSolidClick(Sender: TObject);
    procedure divOptionsBGCustomClick(Sender: TObject);
    procedure divOptionsBGENoneClick(Sender: TObject);
    procedure divOptionsBGESixClick(Sender: TObject);
    procedure divOptionsBGETwelveClick(Sender: TObject);
    procedure divOptionsBGEEighteenClick(Sender: TObject);
    procedure divProxyDefaultClick(Sender: TObject);
    procedure divProxyNoneClick(Sender: TObject);
    procedure divProxyCustomClick(Sender: TObject);
    procedure editProxyChange(Sender: TObject);
    procedure btnFullScreenClick(Sender: TObject);
    procedure btnTrashClick(Sender: TObject);
    procedure btnCloneClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    GongID: Integer;                // Currently Editing
    Gongs: Array of TWebHTMLDiv;    // HexaGong UI elements
    GongsP: Array of Integer;       // Position of HexaGong
    GongData: JSValue;              // JSON describing HexaGong contents


    PositionsX: Array of Double;    // X Position
    PositionsY: Array of Double;    // Y Position
    PositionsR: Array of Integer;   // Row number
    PositionsC: Array of Integer;   // Column number
    PositionsV: Array of Boolean;   // Valid for Layout/Mouseover
    PositionsT: Array of Boolean;   // Valid Target for Drag/Swap
    PositionsG: Array of Integer;   // Gong # at a Position

    AnimatedElements: Integer;               // How many did you say?
    Animation:        Array of Integer;      // Current Position of this animation
    AnimationDiv:     Array of TWebHTMLDiv;  // <div> for this animation
    AnimationDir:     Array of Integer;      // Direction animation is moving (clockwise, 0 is top left of hexagon)
    AnimationLast:    Array of Integer;      // Last Position of this animation
    AnimationTimers:  JSValue;               // Array of setInterval() timers currently active

    MainMode:       Boolean;   // State of Main button (top-left)
    ScaleMode:      Boolean;   // State of Scale button (top-right)
    ChangeMode:     Boolean;   // State of Change button (bottom-right)
    VolumeMode:     Boolean;   // State of Volume button (bottom-left)
    LastClick:      TDateTime; // Used to block clicks from happening before animations are complete.

    ZoomLevel: Integer;   // Number of hexagons in top row (always an odd number)
    HexRadius: Double;    // Radius of one hexagon (width = 2x)
    RowCount: Integer;    // Number of rows (includes odd and even)
    ColCount: Integer;    // Number of columns (just the number of hexagons in first row, always odd)
    MarginTop: Double;    // How much of an offset to center the hexagons vertically

    OptionsDiscardGong: Boolean;  // Keep track of whether we'll save the new HexaGong created

    OptionsNamesScroll: JSValue;       // SimpleBar reference
    OptionsBackgroundScroll: JSValue;  // SimpleBar reference
    OptionsImagesScroll: JSValue;      // SimpleBar reference
    OptionsAudioScroll: JSValue;       // SimpleBar reference
    OptionsSettingsScroll: JSValue;    // SimpleBar reference

    OptionsBGStyle: Integer;  // Radial, Linear, or Solid
    OptionsBGColor1: String;  // CSS Color Value
    OptionsBGColor2: String;  // Hex RGB Value

    OptionsImageStyle: Integer; // Icon, URL, Upload
    OptionsImageRef: String;    // Icon name, URL, Data URI

    OptionsProxyStatus: Integer;   // Default, None, Custom
    OptionsProxy: String;          // Proxy server


  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.WebFormCreate(Sender: TObject);
begin

  // Initial Button States
  MainMode := False;
  ScaleMode := False;
  ChangeMode := False;
  VolumeMode := False;

  // Odds and Ends;
  ZoomLevel := 10;
  LastClick := Now - 1;
  pageControl.TabIndex := 0;

  // CORS Proxy
  OptionsProxyStatus := 0;   // Default: Use HexaGongs proxy
  OptionsProxy := '';        // Nothing defined


  // Initialize GongData
  asm
    this.GongData = {};
    this.GongData['HexaGongs Project Title'] = "New Project";
    this.GongData['HexaGongs Project Description'] = 'No Description';
    this.GongData['HexaGongs'] = [];
  end;


  // Initialize Animation items
  AnimatedElements := 6;
  asm this.AnimationTimers = []; end;


  // Detect Fullscreen mode changes via browser controls
  asm
    document.documentElement.addEventListener("fullscreenchange", (event) => {
      pas.Unit1.Form1.WebFormResize(null);
    });
    window.onresize = function (event) {
      pas.Unit1.Form1.WebFormResize(null);
    }
  end;


  // Enable Simplebar on Options pages
  asm
    this.OptionsNamesScroll      = new SimpleBar(document.getElementById('pageName'      ), { forceVisible: 'y', autoHide: false });
    this.OptionsBackgroundScroll = new SimpleBar(document.getElementById('pageBackground'), { forceVisible: 'y', autoHide: false });
    this.OptionsImagesScroll     = new SimpleBar(document.getElementById('pageImage'     ), { forceVisible: 'y', autoHide: false });
    this.OptionsAudioScroll      = new SimpleBar(document.getElementById('pageAudio'     ), { forceVisible: 'y', autoHide: false });
    this.OptionsSettingsScroll   = new SimpleBar(document.getElementById('pageSettings'  ), { forceVisible: 'y', autoHide: false });
  end;

  // JavaScript Sleep Function
  asm window.sleep = async function(msecs) {return new Promise((resolve) => setTimeout(resolve, msecs)); } end;


  // Deal with button clicks that aren't on buttons directly
  asm
    divBackground.addEventListener('click', (event) => {
      // Cursor handling
      if (  event.target.classList.contains('Valid')
            && (This.ChangeMode == true)
            && !event.target.classList.contains('Button')
            && !event.target.classList.contains('MainButton') ) {
        // Remove jiggle if hexagon is otherwise empty
        if (This.PositionsG[btnCursor.parentElement.getAttribute('position')] == -1) {
          btnCursor.parentElement.style.removeProperty('animation-name');
        }
        // Move cursor to new position
        event.target.appendChild(btnCursor);
        btnCursor.setAttribute('position',event.target.getAttribute('position'));
        btnCursor.style.setProperty('z-index','15');
        // Set to jiggling (might be jiggling already)
        btnCursor.parentElement.style.setProperty('animation-name','jiggle');
      }
      // If not cursor and not primary button and not secondary button, then hide buttons
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
            btnCursor.style.setProperty('z-index','15');
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
              swapel.style.setProperty('z-index',10);
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
            setTimeout(function() {
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
              setTimeout(function() {
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


    // This is used to adjust the size and placement of the options window
    interact('.resize-drag')
      .resizable({
        edges: { left: true, right: true, bottom: true, top: true },
        margin: 30, // size of resizing boundary interaction area
        listeners: {
          move (event) {
            var target = event.target
            var x = (parseFloat(target.getAttribute('data-x')) || -divOptions.getBoundingClientRect().width/2)
            var y = (parseFloat(target.getAttribute('data-y')) || -divOptions.getBoundingClientRect().height/2)
            target.style.width = event.rect.width + 'px'
            target.style.height = event.rect.height + 'px'
            x += event.deltaRect.left
            y += event.deltaRect.top
            target.style.transform = 'translate(' + x + 'px,' + y + 'px)'
            target.setAttribute('data-x', x)
            target.setAttribute('data-y', y)
            pas.Unit1.Form1.UpdateOptionsCursor();
            pas.Unit1.Form1.UpdateColorPickerSize();
            pas.Unit1.Form1.UpdateColorPickerRGB();
            memoHexDesc.dispatchEvent(new Event('input'));
            memoProjDesc.dispatchEvent(new Event('input'));
            memoCustomCSS.dispatchEvent(new Event('input'));
          }
        },
        ignoreFrom: '.nointeract, .simplebar-track'
      })
      .draggable({
        listeners: { move: dragMoveListenerOptions },
        ignoreFrom: '.nointeract, .simplebar-track'
      })
      .pointerEvents({
        ignoreFrom: '.nointeract, .simplebar-track'
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

    function dragMoveListenerOptions (event) {
      var target = event.target
      var x = (parseFloat(target.getAttribute('data-x')) || -divOptions.getBoundingClientRect().width/2) + event.dx
      var y = (parseFloat(target.getAttribute('data-y')) || -divOptions.getBoundingClientRect().height/2) + event.dy
      target.style.transform = 'translate(' + x + 'px, ' + y + 'px)'
      target.setAttribute('data-x', x)
      target.setAttribute('data-y', y)
    };
    window.dragMoveListenerOptions = dragMoveListenerOptions

  end;

  asm
    // https://gist.github.com/bobspace/2712980
    const CSS_COLOR_NAMES = {
      AliceBlue: '#F0F8FF',
      AntiqueWhite: '#FAEBD7',
      Aqua: '#00FFFF',
      Aquamarine: '#7FFFD4',
      Azure: '#F0FFFF',
      Beige: '#F5F5DC',
      Bisque: '#FFE4C4',
      Black: '#000000',
      BlanchedAlmond: '#FFEBCD',
      Blue: '#0000FF',
      BlueViolet: '#8A2BE2',
      Brown: '#A52A2A',
      BurlyWood: '#DEB887',
      CadetBlue: '#5F9EA0',
      Chartreuse: '#7FFF00',
      Chocolate: '#D2691E',
      Coral: '#FF7F50',
      CornflowerBlue: '#6495ED',
      Cornsilk: '#FFF8DC',
      Crimson: '#DC143C',
      Cyan: '#00FFFF',
      DarkBlue: '#00008B',
      DarkCyan: '#008B8B',
      DarkGoldenRod: '#B8860B',
      DarkGray: '#A9A9A9',
      DarkGrey: '#A9A9A9',
      DarkGreen: '#006400',
      DarkKhaki: '#BDB76B',
      DarkMagenta: '#8B008B',
      DarkOliveGreen: '#556B2F',
      DarkOrange: '#FF8C00',
      DarkOrchid: '#9932CC',
      DarkRed: '#8B0000',
      DarkSalmon: '#E9967A',
      DarkSeaGreen: '#8FBC8F',
      DarkSlateBlue: '#483D8B',
      DarkSlateGray: '#2F4F4F',
      DarkSlateGrey: '#2F4F4F',
      DarkTurquoise: '#00CED1',
      DarkViolet: '#9400D3',
      DeepPink: '#FF1493',
      DeepSkyBlue: '#00BFFF',
      DimGray: '#696969',
      DimGrey: '#696969',
      DodgerBlue: '#1E90FF',
      FireBrick: '#B22222',
      FloralWhite: '#FFFAF0',
      ForestGreen: '#228B22',
      Fuchsia: '#FF00FF',
      Gainsboro: '#DCDCDC',
      GhostWhite: '#F8F8FF',
      Gold: '#FFD700',
      GoldenRod: '#DAA520',
      Gray: '#808080',
      Grey: '#808080',
      Green: '#008000',
      GreenYellow: '#ADFF2F',
      HoneyDew: '#F0FFF0',
      HotPink: '#FF69B4',
      IndianRed: '#CD5C5C',
      Indigo: '#4B0082',
      Ivory: '#FFFFF0',
      Khaki: '#F0E68C',
      Lavender: '#E6E6FA',
      LavenderBlush: '#FFF0F5',
      LawnGreen: '#7CFC00',
      LemonChiffon: '#FFFACD',
      LightBlue: '#ADD8E6',
      LightCoral: '#F08080',
      LightCyan: '#E0FFFF',
      LightGoldenRodYellow: '#FAFAD2',
      LightGray: '#D3D3D3',
      LightGrey: '#D3D3D3',
      LightGreen: '#90EE90',
      LightPink: '#FFB6C1',
      LightSalmon: '#FFA07A',
      LightSeaGreen: '#20B2AA',
      LightSkyBlue: '#87CEFA',
      LightSlateGray: '#778899',
      LightSlateGrey: '#778899',
      LightSteelBlue: '#B0C4DE',
      LightYellow: '#FFFFE0',
      Lime: '#00FF00',
      LimeGreen: '#32CD32',
      Linen: '#FAF0E6',
      Magenta: '#FF00FF',
      Maroon: '#800000',
      MediumAquaMarine: '#66CDAA',
      MediumBlue: '#0000CD',
      MediumOrchid: '#BA55D3',
      MediumPurple: '#9370DB',
      MediumSeaGreen: '#3CB371',
      MediumSlateBlue: '#7B68EE',
      MediumSpringGreen: '#00FA9A',
      MediumTurquoise: '#48D1CC',
      MediumVioletRed: '#C71585',
      MidnightBlue: '#191970',
      MintCream: '#F5FFFA',
      MistyRose: '#FFE4E1',
      Moccasin: '#FFE4B5',
      NavajoWhite: '#FFDEAD',
      Navy: '#000080',
      OldLace: '#FDF5E6',
      Olive: '#808000',
      OliveDrab: '#6B8E23',
      Orange: '#FFA500',
      OrangeRed: '#FF4500',
      Orchid: '#DA70D6',
      PaleGoldenRod: '#EEE8AA',
      PaleGreen: '#98FB98',
      PaleTurquoise: '#AFEEEE',
      PaleVioletRed: '#DB7093',
      PapayaWhip: '#FFEFD5',
      PeachPuff: '#FFDAB9',
      Peru: '#CD853F',
      Pink: '#FFC0CB',
      Plum: '#DDA0DD',
      PowderBlue: '#B0E0E6',
      Purple: '#800080',
      RebeccaPurple: '#663399',
      Red: '#FF0000',
      RosyBrown: '#BC8F8F',
      RoyalBlue: '#4169E1',
      SaddleBrown: '#8B4513',
      Salmon: '#FA8072',
      SandyBrown: '#F4A460',
      SeaGreen: '#2E8B57',
      SeaShell: '#FFF5EE',
      Sienna: '#A0522D',
      Silver: '#C0C0C0',
      SkyBlue: '#87CEEB',
      SlateBlue: '#6A5ACD',
      SlateGray: '#708090',
      SlateGrey: '#708090',
      Snow: '#FFFAFA',
      SpringGreen: '#00FF7F',
      SteelBlue: '#4682B4',
      Tan: '#D2B48C',
      Teal: '#008080',
      Thistle: '#D8BFD8',
      Tomato: '#FF6347',
      Turquoise: '#40E0D0',
      Violet: '#EE82EE',
      Wheat: '#F5DEB3',
      White: '#FFFFFF',
      WhiteSmoke: '#F5F5F5',
      Yellow: '#FFFF00',
      YellowGreen: '#9ACD32',
    };

    // Standard color array from https://medium.com/weekly-webtips/build-a-hexagonal-color-picker-with-css-vanilla-javascript-36e62d10527
    const COLOR_RGB =      [                              '#003366','#336699','#3366CC','#003399','#000099','#0000CC','#000066',                               // 7
                                                     '#006666','#006699','#0099CC','#0066CC','#0033CC','#0000FF','#3333FF','#333399',                          // 8
                                                '#669999','#009999','#33CCCC','#00CCFF','#0099FF','#0066FF','#3366FF','#3333CC','#666699',                     // 9
                                           '#339966','#00CC99','#00FFCC','#00FFFF','#33CCFF','#3399FF','#6699FF','#6666FF','#6600FF','#6600CC',                // 10
                                      '#339933','#00CC66','#00FF99','#66FFCC','#66FFFF','#66CCFF','#99CCFF','#9999FF','#9966FF','#9933FF','#9900FF',           // 11
                                 '#006600','#00CC00','#00FF00','#66FF99','#99FFCC','#CCFFFF','#CCCCFF','#CC99FF','#CC66FF','#CC33FF','#CC00FF','#9900CC',      // 12
                            '#003300','#009933','#33CC33','#66FF66','#99FF99','#CCFFCC','#FFFFFF','#FFCCFF','#FF99FF','#FF66FF','#FF00FF','#CC00CC','#660066', // 13
                                 '#336600','#009900','#66FF33','#99FF66','#CCFF99','#FFFAFA','#FFCCCC','#FF99CC','#FF66CC','#FF33CC','#CC0099','#993399',      // 12
                                      '#333300','#669900','#99FF33','#CCFF66','#FFFF99','#FFCC99','#FF9999','#FF6699','#FF3399','#CC3399','#990099',           // 11
                                           '#666633','#99CC00','#CCFF33','#FFFF66','#FFCC66','#FF9966','#FF6666','#FF0066','#CC6699','#993366',                // 10
                                                '#999966','#CCCC00','#FFFF00','#FFCC00','#FF9933','#FF6600','#FF5050','#CC0066','#660033',                     // 9
                                                     '#996633','#CC9900','#FF9900','#CC6600','#FF3300','#FF0000','#CC0000','#990033',                          // 8
                                                          '#663300','#996600','#CC3300','#993300','#990000','#800000','#993333',                               // 7

                                                     '#101010','#303030','#505050','#707070','#909090','#B0B0B0','#D0D0D0','#F0F0F0',                          // 8
                                                '#000000','#202020','#404040','#606060','#808080','#A0A0A0','#C0C0C0','#E0E0E0','#FFFFFF'                      // 9
                           ];

    // Increase X by 3, each layer offset by 1.5
    const COLOR_X = [                          9.000, 12.000, 15.000, 18.000, 21.000, 24.000, 27.000,                          // 7
                                           7.500, 10.500, 13.500, 16.500, 19.500, 22.500, 25.500, 28.500,                      // 8
                                       6.000,  9.000, 12.000, 15.000, 18.000, 21.000, 24.000, 27.000, 30.000,                  // 9
                                   4.500,  7.500, 10.500, 13.500, 16.500, 19.500, 22.500, 25.500, 28.500, 31.500,              // 10
                               3.000,  6.000,  9.000, 12.000, 15.000, 18.000, 21.000, 24.000, 27.000, 30.000, 33.000,          // 11
                           1.500,  4.500,  7.500, 10.500, 13.500, 16.500, 19.500, 22.500, 25.500, 28.500, 31.500, 34.5000,     // 12
                       0.000,  3.000,  6.000,  9.000, 12.000, 15.000, 18.000, 21.000, 24.000, 27.000, 30.000, 33.000, 36.000,  // 13
                           1.500,  4.500,  7.500, 10.500, 13.500, 16.500, 19.500, 22.500, 25.500, 28.500, 31.500, 34.5000,     // 12
                               3.000,  6.000,  9.000, 12.000, 15.000, 18.000, 21.000, 24.000, 27.000, 30.000, 33.000,          // 11
                                   4.500,  7.500, 10.500, 13.500, 16.500, 19.500, 22.500, 25.500, 28.500, 31.500,              // 10
                                       6.000,  9.000, 12.000, 15.000, 18.000, 21.000, 24.000, 27.000, 30.000,                  // 9
                                           7.500, 10.500, 13.500, 16.500, 19.500, 22.500, 25.500, 28.500,                      // 8
                                               9.000, 12.000, 15.000, 18.000, 21.000, 24.000, 27.000,                          // 7

                                           7.500, 10.500, 13.500, 16.500, 19.500, 22.500, 25.500, 28.500,                      // 8
                                       6.000,  9.000, 12.000, 15.000, 18.000, 21.000, 24.000, 27.000, 30.000                   // 9
                    ];
    // Increase Y by sqrt(3)/2
    const COLOR_Y = [                          0.000,  0.000,  0.000,  0.000,  0.000,  0.000,  0.000,                          // 7
                                           0.866,  0.866,  0.866,  0.866,  0.866,  0.866,  0.866,  0.866,                      // 8
                                       1.732,  1.732,  1.732,  1.732,  1.732,  1.732,  1.732,  1.732,  1.732,                  // 9
                                   2.598,  2.598,  2.598,  2.598,  2.598,  2.598,  2.598,  2.598,  2.598,  2.598,              // 10
                               3.464,  3.464,  3.464,  3.464,  3.464,  3.464,  3.464,  3.464,  3.464,  3.464,  3.464,          // 11
                           4.330,  4.330,  4.330,  4.330,  4.330,  4.330,  4.330,  4.330,  4.330,  4.330,  4.330,  4.330,      // 12
                       5.196,  5.196,  5.196,  5.196,  5.196,  5.196,  5.196,  5.196,  5.196,  5.196,  5.196,  5.196,  5.196,  // 13
                           6.062,  6.062,  6.062,  6.062,  6.062,  6.062,  6.062,  6.062,  6.062,  6.062,  6.062,  6.062,      // 12
                               6.928,  6.928,  6.928,  6.928,  6.928,  6.928,  6.928,  6.928,  6.928,  6.928,  6.928,          // 11
                                   7.794,  7.794,  7.794,  7.794,  7.794,  7.794,  7.794,  7.794,  7.794,  7.794,              // 10
                                       8.660,  8.660,  8.660,  8.660,  8.660,  8.660,  8.660,  8.660,  8.660,                  // 9
                                           9.526,  9.526,  9.526,  9.526,  9.526,  9.526,  9.526,  9.526,                      // 8
                                              10.392, 10.392, 10.392, 10.392, 10.392, 10.392, 10.392,                          // 7

                                          12.124, 12.124, 12.124, 12.124, 12.124, 12.124, 12.124, 12.124,                      // 8
                                      12.990, 12.990, 12.990, 12.990, 12.990, 12.990, 12.990, 12.990, 12.990                   // 9
                    ];

    var colorpicker = '';
    for (var i = 0; i < COLOR_RGB.length; i++) {
      var colorvalue = COLOR_RGB[i];
      var colorname = COLOR_RGB[i];
      Object.entries(CSS_COLOR_NAMES).forEach(([name, rgbvalue]) => {
        if (rgbvalue == colorvalue) {
          colorname = name;
        }
      });
      colorpicker += '<div class="ColorHexagon" '+
                        'title="'+colorname+'" '+
                        'data-bs-toggle="tooltip" '+
                        'data-bs-custom-class="ColorTooltip" '+
                        'colorindex="'+i+'" '+
                        'style="top: '+25.981*COLOR_Y[i]+'px; '+
                               'left: '+10*COLOR_X[i]+'px; '+
                               'background-color: '+colorvalue+'"'+
                     '></div>';
    }
    divColorPicker1.innerHTML = colorpicker;

    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));

    divColorPicker1.addEventListener('click', (event) => {
      if (event.target.classList.contains('ColorHexagon')) {
        var colors = divColorPicker1.querySelectorAll('.ColorHexagon');
        colors.forEach(hex => {
          if ((hex == event.target) || (event.target.getAttribute('data-bs-original-title') == hex.getAttribute('data-bs-original-title'))) {
            hex.innerHTML = '<i class="pe-none d-flex justify-content-center align-items-center Picked fa-solid fa-xmark fa-lg"></i>';
            pas.Unit1.Form1.ColorSelected(event.target.getAttribute('data-bs-original-title'),event.target.style.getPropertyValue('background-color'),parseInt(event.target.getAttribute('colorIndex')));
          }
          else {
            hex.innerHTML = '';
          }
        });
      }
    });

    // RGB Sliders
    divColorPicker2.addEventListener('sl-input',function(e){
      var range = divColorPicker2.getBoundingClientRect().width - 86;
      if (e.target.id == "ColorRed") {
        ThumbRed.style.setProperty("left",range * (e.target.value / 255) +'px');
        ThumbRed.innerHTML = "<div class='ThumbLabel'>"+e.target.value+"</dvi>";
      }
      else if (e.target.id == "ColorGreen") {
        ThumbGreen.style.setProperty("left",range * (e.target.value / 255) +'px');
        ThumbGreen.innerHTML = "<div class='ThumbLabel'>"+e.target.value+"</dvi>";
      }
      else if (e.target.id == "ColorBlue") {
        ThumbBlue.style.setProperty("left",range * (e.target.value / 255) +'px');
        ThumbBlue.innerHTML = "<div class='ThumbLabel'>"+e.target.value+"</dvi>";
      }
      pas.Unit1.Form1.OptionsBGColor2 = 'rgb('+ColorRed.value+', '+ColorGreen.value+', '+ColorBlue.value+')';
      pas.Unit1.Form1.UpdateColorPickerHexagon();
    });
  end;
end;

procedure TForm1.WebFormResize(Sender: TObject);
var
  FullScreenMode: Boolean;
begin

  // Do our best to detect fullscreen mode?

// ATTEMPT #1
//  asm
//   const windowWidth = window.innerWidth * window.devicePixelRatio;
//   const windowHeight = window.innerHeight * window.devicePixelRatio;
//   const screenWidth = window.screen.width;
//   const screenHeight = window.screen.height;
//   if (((windowWidth/screenWidth)>=0.95) && ((windowHeight/screenHeight)>=0.95)) {
//     this.FullScreenMode = true;
//   }
//   else {
//     this.FullScreenMode = false;
//    }
//  end;
//
//  if FullScreenMode = False
//  then btnFullScreen.Caption := '<i class="fa-solid fa-expand text-white"></i>'
//  else btnFullScreen.Caption := '<i class="fa-solid fa-compress text-white"></i>';

// ATTEMPT #2
//  asm
//    const container = document.documentElement;
//
//    if (document.fullscreenElement) {
//      FullScreenMode = false;
//      if (document.exitFullscreen) {
//   		   FullScreenMode = true;
//      } else if (document.mozCancelFullScreen) {
//   		   FullScreenMode = true;
//      } else if (document.webkitCancelFullScreen) {
//   		   FullScreenMode = true;
//      } else if (document.msExitFullscreen) {
//   		   FullScreenMode = true;
//		  }
//    } else {
//      FullScreenMode = true;
//      if (!document.mozFullScreen && !document.webkitFullScreen) {
//        if (container.requestFullscreen) {
//    		   FullScreenMode = false;
//        }
//        else if (container.mozRequestFullScreen) {
//    		   FullScreenMode = false;
//        }
//        else if (container.webkitRequestFullScreen) {
//    		   FullScreenMode = false;
//        }
//        else if (container.msRequestFullscreen) {
//    		   FullScreenMode = false;
//        }
//    	}
//    }
//  end;

  // ATTEMPT #3
  asm
    FullScreenMode = (window.innerHeight === screen.height);
  end;

  if FullScreenMode = False
  then btnFullScreen.Caption := '<i class="fa-solid fa-expand text-white"></i>'
  else btnFullScreen.Caption := '<i class="fa-solid fa-compress text-white"></i>';

  // Check that app has initialized before doing this
  if Length(PositionsX) > 0 then
  begin
    StopAnimation;
    GeneratePositions;
    DrawBackground;
    StartAnimation;

    if ChangeMode = True then
    begin
      LastClick := Now - 1;
      ChangeMode := False;
      btnChangeClick(btnChange);
      UpdateOptionsCursor;
      UpdateColorPickerSize;
      UpdateColorPickerRGB;
    end;
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


  asm
    // https://stephanwagner.me/auto-resizing-textarea-with-vanilla-javascript
    function addAutoResize() {
      document.querySelectorAll('[data-autoresize]').forEach(function (element) {
        element.style.boxSizing = 'border-box';
        var offset = element.offsetHeight - element.clientHeight;
        element.addEventListener('input', function (event) {
          event.target.style.height = 'auto';
          event.target.style.height = event.target.scrollHeight + offset + 'px';
          event.target.parentElement.style.height = event.target.scrollHeight + offset + 4 + 'px';
          pas.Unit1.Form1.OptionsNamesScroll.recalculate();
          pas.Unit1.Form1.OptionsBackgroundScroll.recalculate();
          pas.Unit1.Form1.OptionsImagesScroll.recalculate();
          pas.Unit1.Form1.OptionsAudioScroll.recalculate();
          pas.Unit1.Form1.OptionsSettingsScroll.recalculate();
        });
        element.removeAttribute('data-autoresize');
      });
    }
    memoHexDesc.setAttribute('data-autoresize','');
    memoHexDesc.setAttribute('rows','1');
    memoProjDesc.setAttribute('data-autoresize','');
    memoProjDesc.setAttribute('rows','1');
    memoCustomCSS.setAttribute('data-autoresize','');
    memoCustomCSS.setAttribute('rows','1');

    addAutoResize();
  end;
end;

procedure TForm1.UpdateColorPickerHexagon;
begin
  asm
    var colors = divColorPicker1.querySelectorAll('.ColorHexagon');
    var colorname = '';
    var i = 0;
    var s = -1;
    colors.forEach(hex => {

      if (this.OptionsBGColor2 == hex.style.getPropertyValue('background-color')) {
        colorname = hex.getAttribute('data-bs-original-title');
        hex.innerHTML = '<i class="pe-none d-flex justify-content-center align-items-center Picked fa-solid fa-xmark fa-lg"></i>';
        s = i;
      }
      else {
        hex.innerHTML = '';
      }
      i = i + 1;
    });

    if (colorname == '') {
      var r = parseInt(this.OptionsBGColor2.replace('rgb(','').replace(')','').split(',')[0]);
      var g = parseInt(this.OptionsBGColor2.replace('rgb(','').replace(')','').split(',')[1]);
      var b = parseInt(this.OptionsBGColor2.replace('rgb(','').replace(')','').split(',')[2]);
      colorname = '#'+r.toString(16).padStart(2,'0')+g.toString(16).padStart(2,'0')+b.toString(16).padStart(2,'0');
    }
    pas.Unit1.Form1.ColorSelected(colorname,this.OptionsBGColor2,s);

  end;
end;

procedure TForm1.UpdateColorPickerRGB;
begin
  asm
    var range = divColorPicker2.getBoundingClientRect().width - 86;
    var r = parseInt(this.OptionsBGColor2.replace('rgb(','').replace(')','').split(',')[0]);
    var g = parseInt(this.OptionsBGColor2.replace('rgb(','').replace(')','').split(',')[1]);
    var b = parseInt(this.OptionsBGColor2.replace('rgb(','').replace(')','').split(',')[2]);

    if (r !== ColorRed.value) {
      ColorRed.setAttribute('value',r);
      ThumbRed.innerHTML = "<div class='ThumbLabel'>"+r+"</dvi>";
    }
    ThumbRed.style.setProperty("left",range * (r / 255) +'px');

    if (g !== ColorGreen.value) {
      ColorGreen.setAttribute('value',g);
      ThumbGreen.innerHTML = "<div class='ThumbLabel'>"+g+"</dvi>";
    }
    ThumbGreen.style.setProperty("left",range * (g / 255) +'px');

    if (b !== ColorBlue.Value) {
      ColorBlue.setAttribute('value',b);
      ThumbBlue.innerHTML = "<div class='ThumbLabel'>"+b+"</dvi>";
    }
    ThumbBlue.style.setProperty("left",range * (b / 255) +'px');

  end;
end;

procedure TForm1.UpdateColorPickerSize;
var
  avail: Double;
  scale: Double;
  space: Double;
begin
  avail := divSelectColor.ElementHandle.getBoundingClientRect.Width;
  scale := Min(avail / 440.0,1.5);
  space := scale*370.0;
  divColorPicker1.ElementHandle.style.setProperty('transform','scale('+FloatToSTrF(scale,ffGeneral,10,5)+')');
  divColorPicker1.ElementHandle.style.setProperty('height',FloatToSTrF(space,ffGeneral,10,5)+'px','important');
end;

procedure TForm1.UpdateOptionsCursor;
var
  CursorLink: TWebButton;

  CursorTop: Double;
  CursorLeft: Double;
  CursorWidth: Double;
  CursorHeight: Double;

begin

  if      pageControl.tabIndex = 0 then CursorLink := btnOptionsName
  else if pageControl.tabIndex = 1 then CursorLink := btnOptionsBackground
  else if pageControl.tabIndex = 2 then CursorLink := btnOptionsImage
  else if pageControl.tabIndex = 3 then CursorLink := btnOptionsAudio
  else if pageControl.tabIndex = 4 then CursorLink := btnOptionsSettings;

  CursorTop := CursorLink.ElementHandle.getBoundingClientRect.top - divOptionsList.ElementHandle.getBoundingClientRect.top;
  CursorLeft := CursorLink.ElementHandle.getBoundingClientRect.left + 20 - divOptionsList.ElementHandle.getBoundingClientRect.left;
  CursorWidth := CursorLink.ElementHandle.getBoundingClientRect.width;
  CursorHeight := CursorLink.ElementHandle.getBoundingClientRect.height;

  divOptionsCursor.ElementHandle.style.setProperty('top',FloatToStrF(CursorTop,ffGeneral,10,5)+'px');
  divOptionsCursor.ElementHandle.style.setProperty('left',FloatToStrF(CursorLeft,ffGeneral,10,5)+'px');
  divOptionsCursor.ElementHandle.style.setProperty('width',FloatToStrF(CursorWidth,ffGeneral,10,5)+'px');
  divOptionsCursor.ElementHandle.style.setProperty('height',FloatToStrF(CursorHeight,ffGeneral,10,5)+'px');

  divOptionsCursor.ElementHandle.style.setProperty('background',window.getComputedStyle(CursorLink.ElementHandle).getPropertyValue('background'));

end;

procedure TForm1.btnEditClick(Sender: TObject);
var
  CursorPosition: Integer;
begin
  CursorPosition := StrToInt(btnCursor.ElementHandle.getAttribute('position'));
  OptionsDiscardGong := False;

  // Position of the cursor
  if CursorPosition <> -1 then
  begin

    // New Gong
    if PositionsG[CursorPosition] = -1 then
    begin
      OptionsDiscardGong := True;

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
      Gongs[GongID].ElementHandle.style.setProperty('width',FloatToStrF(HexRadius * 2,ffGeneral,10,5)+'px');
      Gongs[GongID].ElementHandle.style.setProperty('height',FloatToStrF(HexRadius * 2,ffGeneral,10,5)+'px');
      Gongs[GongID].ElementHandle.style.setProperty('z-index','10');
      Gongs[GongID].ElementHandle.style.setProperty('background','radial-gradient(#00000080,#FFFFFF80)');
      Gongs[GongID].ElementHandle.style.setProperty('font-size',IntToStr(Trunc(HexRadius))+'px');

//      Gongs[GongID].HTML.Text := '<div class="text-white">'+IntToStr(GongID)+'</div>';

      document.getElementById('BG-'+IntToStr(CursorPosition)).appendChild(Gongs[GongID].ElementHandle);
      (document.getElementById('BG-'+IntToStr(CursorPosition)) as TJSHTMLElement).style.setProperty('animation-name','jiggle');

      // Set default values for new HexaGong
      asm
        this.GongData['HexaGongs'].push({});
        this.GongData['HexaGongs'][this.GongID]['Name'] = 'New HexaGong '+(this.GongID + 1);
        this.GongData['HexaGongs'][this.GongID]['Description'] = 'No description';
        this.GongData['HexaGongs'][this.GongID]['BG Style'] = 1;
        this.GongData['HexaGongs'][this.GongID]['BG Color 1'] = 'White';
        this.GongData['HexaGongs'][this.GongID]['BG Color 2'] = 'rgb(255, 255, 255)';
        this.GongData['HexaGongs'][this.GongID]['BG Custom'] = '';
      end;

    end
    else
    begin
      GongID := PositionsG[CursorPosition];
    end;

    // Edit Gong

    // Display Options dialog in a predetermined state
    divShade.ElementHandle.style.setProperty('visibility','visible');
    divShade.ElementHandle.style.SetProperty('opacity','0.5');
    divOptions.ElementHandle.style.setProperty('visibility','visible');
    divOptions.ElementHandle.style.SetProperty('opacity','1');

    pageControl.TabIndex := 0;
    btnOptionsNameClick(Sender);

    // Set Options values to match GongData

    // pageName
    asm
      this.editTitle.SetText(this.GongData['HexaGongs Project Title']);
      this.memoProjDesc.FLines.SetTextStr(this.GongData['HexaGongs Project Description']);
      this.editHexName.SetText(this.GongData['HexaGongs'][this.GongID]['Name']);
      this.memoHexDesc.FLines.SetTextStr(this.GongData['HexaGongs'][this.GongID]['Description']);
    end;

    // pageBackground
    asm
      this.OptionsBGStyle = this.GongData['HexaGongs'][this.GongID]['BG Style'];
      this.OptionsBGColor1 = this.GongData['HexaGongs'][this.GongID]['BG Color 1'];
      this.OptionsBGColor2 = this.GongData['HexaGongs'][this.GongID]['BG Color 2'];
      this.memoCustomCSS.FLines.SetTextStr(this.GongData['HexaGongs'][this.GongID]['BG Custom']);
    end;
    if OptionsBGStyle = 0 then divOptionsBGRadialClick(Sender);
    if OptionsBGStyle = 1 then divOptionsBGLinearClick(Sender);
    if OptionsBGStyle = 2 then divOptionsBGSolidClick(Sender);
    if OptionsBGStyle = 3 then divOptionsBGCustomClick(Sender);

    // pageImage
    asm
      this.OptionsImageStyle = this.GongData['HexaGongs'][this.GongID]['Image Style'];
      this.OptionsImageRef = this.GongData['HexaGongs'][this.GongID]['Image Ref'];
    end;

    // pageAudio

    // pageSettings
    if AnimatedElements = 0
    then labelOptionsBGENone.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)')
    else labelOptionsBGENone.ElementHandle.style.setProperty('background','radial-gradient(#00000000,black)');
    if AnimatedElements = 6
    then labelOptionsBGESix.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)')
    else labelOptionsBGESix.ElementHandle.style.setProperty('background','radial-gradient(#00000000,black)');
    if AnimatedElements = 12
    then labelOptionsBGETwelve.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)')
    else labelOptionsBGETwelve.ElementHandle.style.setProperty('background','radial-gradient(#00000000,black)');
    if AnimatedElements = 18
    then labelOptionsBGEEighteen.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)')
    else labelOptionsBGEEighteen.ElementHandle.style.setProperty('background','radial-gradient(#00000000,black)');

    editProxy.Text := OptionsProxy;
    if OptionsProxyStatus = 0 then divProxyDefaultClick(Sender)
    else if OptionsProxyStatus  = 1 then divProxyNoneClick(Sender)
    else if OptionsProxyStatus  = 2 then divProxyDefaultClick(Sender)

  end;
end;

procedure TForm1.btnFullScreenClick(Sender: TObject);
begin

  asm
    const container = document.documentElement;

    if (document.fullscreenElement) {
      if (document.exitFullscreen) {
   		   document.exitFullscreen();
      } else if (document.mozCancelFullScreen) {
          document.mozCancelFullScreen();
      } else if (document.webkitCancelFullScreen) {
          document.webkitCancelFullScreen();
      } else if (document.msExitFullscreen) {
          document.msExitFullscreen();
		  }
    } else {
      if (!document.mozFullScreen && !document.webkitFullScreen) {
        if (container.requestFullscreen) {
            container.requestFullscreen();
        }
        else if (container.mozRequestFullScreen) {
            container.mozRequestFullScreen();
        }
        else if (container.webkitRequestFullScreen) {
            container.webkitRequestFullScreen();
        }
        else if (container.msRequestFullscreen) {
            container.msRequestFullscreen();
        }
    	}
    }
  end;

  // Trigger WebFormResize to account for new window dimensions
  asm setTimeout(function() { pas.Unit1.Form1.WebFormResize(null); }, 50);  end;


end;

procedure TForm1.btnMainClick(Sender: TObject);
begin

  if (MillisecondsBetween(Now, LastClick) > 1000) or (Sender = nil) then
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

      btnScaleClick(nil);
      btnChangeClick(nil);
      btnVolumeClick(nil);
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

procedure TForm1.btnOptionsAudioClick(Sender: TObject);
begin
  if (PageControl.TabIndex <> 3) then
  begin
    PageControl.ActivePage.ElementHandle.style.setProperty('opacity','0');
    asm await sleep(200); end;
  end;

  pageControl.TabIndex := 3;
  UpdateOptionsCursor;
  pageAudio.ElementHandle.style.setProperty('opacity','1');
end;

procedure TForm1.btnOptionsBackgroundClick(Sender: TObject);
begin
  if (PageControl.TabIndex <> 1) then
  begin
    PageControl.ActivePage.ElementHandle.style.setProperty('opacity','0');
    asm await sleep(200); end;
  end;

  pageControl.TabIndex := 1;
  UpdateOptionsCursor;
  UpdateColorPickerSize;
  UpdateColorPickerHexagon;
  UpdateColorPickerRGB;
  labelSelectColor.HTML := 'Select Color <span style="padding-left: 20px; color: silver; font-family: var(--bs-font-monospace)"> '+OptionsBGColor1+'   '+OptionsBGColor2+'</span>';
  pageBackground.ElementHandle.style.setProperty('opacity','1');

  asm
    memoCustomCSS.dispatchEvent(new Event('input'));
  end;
end;

procedure TForm1.btnOptionsCancelClick(Sender: TObject);
var
//  HexaGongString: String;
  Ref: Integer;
  CursorPosition: Integer;
begin
  CursorPosition := StrToInt(btnCursor.ElementHandle.getAttribute('position'));

  // Don't save if not a NewGong
  if OptionsDiscardGong then
  begin
    Ref := Length(Gongs) - 1;
    Gongs[Ref].HTML.Text := '';
    Gongs[Ref] := nil;
    SetLength(Gongs, Ref);
    SetLength(GongsP, Ref);
    PositionsG[CursorPosition] := -1;
    asm
      this.GongData.HexaGongs.pop();
      document.getElementById('Gong-'+Ref).remove();
      document.getElementById('BG-'+CursorPosition).style.setProperty('animation-name','jiggle');
    end;
  end;

  divShade.ElementHandle.style.setProperty('opacity','0');
  divOptions.ElementHandle.style.setProperty('opacity','0');
  asm
    setTimeout(function() {
      divShade.style.setProperty('visibility','hidden');
      divOptions.style.setProperty('visibility','hidden');
    },500);
  end;

//  HexaGongString := GongData.ToString;
//  asm console.log(JSON.parse(HexaGongString)); end;
end;

procedure TForm1.btnOptionsImageClick(Sender: TObject);
begin
  if (PageControl.TabIndex <> 2) then
  begin
    PageControl.ActivePage.ElementHandle.style.setProperty('opacity','0');
    asm await sleep(200); end;
  end;

  pageControl.TabIndex := 2;
  UpdateOptionsCursor;
  pageImage.ElementHandle.style.setProperty('opacity','1');
end;

procedure TForm1.btnOptionsNameClick(Sender: TObject);
begin
  if (PageControl.TabIndex <> 0) then
  begin
    PageControl.ActivePage.ElementHandle.style.setProperty('opacity','0');
    asm await sleep(200); end;
  end;

  pageControl.TabIndex := 0;
  UpdateOptionsCursor;
  pageName.ElementHandle.style.setProperty('opacity','1');

  asm
    memoProjDesc.dispatchEvent(new Event('input'));
    memoHexDesc.dispatchEvent(new Event('input'));
  end;
end;

procedure TForm1.btnOptionsOKClick(Sender: TObject);
begin
  // Save Options to GongData JSON
  asm
    this.GongData['HexaGongs Project Title'] = this.editTitle.GetText();
    this.GongData['HexaGongs Project Description'] = this.memoProjDesc.GetText();
    this.GongData['HexaGongs'][this.GongID]['Name'] = this.editHexName.GetText();
    this.GongData['HexaGongs'][this.GongID]['Description'] = this.memoHexDesc.GetText();
    this.GongData['HexaGongs'][this.GongID]['BG Style'] = this.OptionsBGStyle;
    this.GongData['HexaGongs'][this.GongID]['BG Color 1'] = this.OptionsBGColor1;
    this.GongData['HexaGongs'][this.GongID]['BG Color 2'] = this.OptionsBGColor2;
    this.GongData['HexaGongs'][this.GongID]['BG Custom'] = this.memoCustomCSS.GetText();
  end;

  // Update UI element - Background
  if OptionsBGStyle = 0
  then Gongs[GongID].ElementHandle.style.setProperty('background','radial-gradient(black,'+OptionsBGColor1+')')
  else if OptionsBGStyle = 1
  then Gongs[GongID].ElementHandle.style.setProperty('background','linear-gradient(60deg,black,'+OptionsBGColor1+')')
  else if OptionsBGStyle = 2
  then Gongs[GongID].ElementHandle.style.setProperty('background',OptionsBGColor1)
  else
  begin
    Gongs[GongID].ElementHandle.style.cssText := Gongs[GongID].ElementHandle.style.cssText + memoCustomCSS.Lines.Text;
  end;

  // Update UI element - Image


  // Update UI element - Audio

  OptionsDiscardGong := False;
  btnOptionsCancelClick(Sender);
end;

procedure TForm1.btnOptionsSettingsClick(Sender: TObject);
begin
  if (PageControl.TabIndex <> 4) then
  begin
    PageControl.ActivePage.ElementHandle.style.setProperty('opacity','0');
    asm await sleep(200); end;
  end;

  pageControl.TabIndex := 4;
  UpdateOptionsCursor;
  pageSettings.ElementHandle.style.setProperty('opacity','1');
end;

procedure TForm1.btnScaleClick(Sender: TObject);
begin

  if (MillisecondsBetween(Now, LastClick) > 1000) or (Sender = nil) then
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

      btnChangeClick(nil);
      btnVolumeClick(nil);
      btnMainClick(nil);
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

  if (MillisecondsBetween(Now, LastClick) > 1000) or (Sender = nil) then
  begin
    LastClick := Now;

    if (Sender = btnChange) and (ChangeMode = False) then
    begin
      ChangeMode := True;

      i := 0;
      while i < Length(Gongs) do
      begin
        if Gongs[I] <> nil then
        begin
          Gongs[i].ElementHandle.classList.add('dragswap');
          (Gongs[i].ElementHandle.parentElement as TJSHTMLElement).style.setProperty('animation-name','jiggle');
        end;
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

      btnSCaleClick(nil);
      btnVolumeClick(nil);
      btnMainClick(nil);
    end
    else
    begin
      ChangeMode := False;

      i := 0;
      while i < Length(Gongs) do
      begin
        if Gongs[i] <> nil then
        begin
          Gongs[i].ElementHandle.classList.remove('dragswap');
        end;
        i := i + 1;
      end;

      divButtons.ElementHandle.appendChild(btnCursor.ElementHandle);
      btnCursor.ElementHandle.setAttribute('position','-1');
      btnChange.ElementHandle.classList.remove('Selected');
      asm
        // Just in case some stragglers are left behind?!
        var hex = document.querySelectorAll('.Hexagon');
        hex.forEach((h)=> h.style.removeProperty('animation-name'));

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

procedure TForm1.btnCloneClick(Sender: TObject);
var
  CursorPosition: Integer;
  Ref: Integer;
  i: Integer;
begin
  // Remove a HexaGong
  CursorPosition := StrToInt(btnCursor.ElementHandle.getAttribute('position'));
  Ref := PositionsG[CursorPosition];

  if Ref <> -1 then
  begin
    i := CursorPosition + 1;
    while ((PositionsT[i] = False) or (PositionsG[i] <> -1)) and (i < length(PositionsT)) do
      i := i + 1;

    if i = Length(PositionsT) then
    begin
      i := CursorPosition - 1;
      while  ((PositionsT[i] = False) or (PositionsG[i] <> -1)) and (i > -1) do
        i := i - 1;
    end;

    if (i >= 0) and (i < Length(PositionsT)) then
    begin
      GongID := Length(Gongs);
      SetLength(Gongs, GongID + 1);
      SetLength(GongsP, GongID + 1);
      GongsP[GongID] := i;
      PositionsG[i] := GongID;

      Gongs[GongID] := TWebHTMLDiv.Create('Gong-'+IntToStr(GongID));
      Gongs[GongID].Parent := divButtons;

      Gongs[GongID].ElementHandle.setAttribute('gongid',IntToStr(GongID));
      Gongs[GongID].ElementHandle.setAttribute('position',IntToStr(i));
      Gongs[GongID].ElementHandle.setAttribute('row',IntToStr(PositionsR[i]));
      Gongs[GongID].ElementHandle.setAttribute('column',IntToStr(PositionsC[i]));

      Gongs[GongID].ElementHandle.classList.Add('Gong','d-flex','justify-content-center','align-items-center','dragswap');

      Gongs[GongID].ElementHandle.style.cssText := Gongs[Ref].ElementHandle.style.cssText;
      Gongs[GongID].HTML.Text := Gongs[Ref].HTML.Text;

//      Gongs[GongID].HTML.Text := '<div class="text-white">'+IntToStr(GongID)+'</div>';

      document.getElementById('BG-'+IntToStr(i)).appendChild(Gongs[GongID].ElementHandle);
      (document.getElementById('BG-'+IntToStr(i)) as TJSHTMLElement).style.setProperty('animation-name','jiggle');

      // Set default values for new HexaGong
      asm
        this.GongData['HexaGongs'].push({});
        this.GongData['HexaGongs'][this.GongID] = this.GongData['HexaGongs'][Ref];
        this.GongData['HexaGongs'][this.GongID]['Name'] = 'Clone of '+this.GongData['HexaGongs'][Ref]['Name'];
      end;
    end;
  end;
end;

procedure TForm1.btnVolumeClick(Sender: TObject);
begin

  if (MillisecondsBetween(Now, LastClick) > 1000) or (Sender = nil) then
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

      btnMainClick(nil);
      btnSCaleClick(nil);
      btnChangeClick(nil);
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
      if Gongs[i] <> nil then
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
      if Gongs[i] <> nil then
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
      end;
      i := i + 1;
    end;

    DrawBackground;
    StartAnimation;
  end;

end;

procedure TForm1.btnTrashClick(Sender: TObject);
var
  CursorPosition: Integer;
  Ref: Integer;
begin
  // Remove a HexaGong
  CursorPosition := StrToInt(btnCursor.ElementHandle.getAttribute('position'));
  Ref := PositionsG[CursorPosition];

  if Ref <> -1 then
  begin
    Gongs[Ref].HTML.Text := '';
    Gongs[Ref] := nil;
    GongsP[Ref] := -1;
    PositionsG[CursorPosition] := -1;
    asm
      this.GongData.HexaGongs[Ref]['Deleted'] = true;
      document.getElementById('Gong-'+Ref).remove();
    end;
  end;
end;

procedure TForm1.ColorSelected(ColorName, ColorValue: String; ColorIndex: Integer);
begin
  labelSelectColor.HTML := 'Select Color <span style="padding-left: 20px; color: silver; font-family: var(--bs-font-monospace)"> '+ColorName+'   '+ColorValue+'</span>';
  OptionsBGColor1 := ColorName;
  OptionsBGColor2 := ColorValue;
  UpdateColorPickerRGB;
end;

procedure TForm1.ConfigButton(btn: TWebButton; HexPosition: Integer; ClassName: String);
begin

  divButtons.ElementHAndle.appendChild(btn.ElementHandle);
  btn.ElementHandle.setAttribute('position',IntToStr(HexPosition));
  btn.ElementHandle.classList.Add(ClassName,'d-flex','justify-content-center','align-items-center');
  btn.ElementHandle.style.setProperty('top','0px');
  btn.ElementHandle.style.setProperty('left','0px');
  btn.ElementHandle.style.setProperty('width',FloatToStrF(HexRadius * 2,ffGeneral,10,5)+'px');
  btn.ElementHandle.style.setProperty('height',FloatToStrF(HexRadius * 2,ffGeneral,10,5)+'px');
  btn.ElementHandle.style.setProperty('font-size',IntToStr(Trunc(HexRadius))+'px');
  btn.ElementHandle.style.setProperty('transition','opacity 500ms, color 500ms');
  btn.Tag := HexPosition;

  if HexPosition >= 0 then PositionsT[HexPosition] := False;

end;

procedure TForm1.divOptionsBGCustomClick(Sender: TObject);
begin
  OptionsBGStyle := 3;
  divOptionsBGCustomLabel.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  divOptionsBGLinearLabel.ElementHandle.style.setProperty('background','black');
  divOptionsBGRadialLabel.ElementHandle.style.setProperty('background','black');
  divOptionsBGSolidLabel.ElementHandle.style.setProperty('background','black');

  divCUstomCSSHolder.Visible := True;
  divCustomCSSTitle.Visible := True;

  divSelectColor.Visible := False;
  divColorPicker1.Visible := False;
  divColorPicker2.ElementHandle.classList.Replace('d-flex','d-none');

  asm
    memoCustomCSS.dispatchEvent(new Event('input'));
  end;


end;

procedure TForm1.divOptionsBGEEighteenClick(Sender: TObject);
begin
  labelOptionsBGEEighteen.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelOptionsBGENone.ElementHandle.style.setProperty('background','black');
  labelOptionsBGESix.ElementHandle.style.setProperty('background','black');
  labelOptionsBGETwelve.ElementHandle.style.setProperty('background','black');

  StopAnimation;
  AnimatedElements := 18;
  StartAnimation;
end;

procedure TForm1.divOptionsBGENoneClick(Sender: TObject);
begin
  labelOptionsBGENone.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelOptionsBGEEighteen.ElementHandle.style.setProperty('background','black');
  labelOptionsBGESix.ElementHandle.style.setProperty('background','black');
  labelOptionsBGETwelve.ElementHandle.style.setProperty('background','black');

  StopAnimation;
end;

procedure TForm1.divOptionsBGESixClick(Sender: TObject);
begin
  labelOptionsBGESix.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelOptionsBGENone.ElementHandle.style.setProperty('background','black');
  labelOptionsBGEEighteen.ElementHandle.style.setProperty('background','black');
  labelOptionsBGETwelve.ElementHandle.style.setProperty('background','black');

  StopAnimation;
  AnimatedElements := 6;
  StartAnimation;
end;

procedure TForm1.divOptionsBGETwelveClick(Sender: TObject);
begin
  labelOptionsBGETwelve.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelOptionsBGENone.ElementHandle.style.setProperty('background','black');
  labelOptionsBGESix.ElementHandle.style.setProperty('background','black');
  labelOptionsBGEEighteen.ElementHandle.style.setProperty('background','black');

  StopAnimation;
  AnimatedElements := 12;
  StartAnimation;
end;

procedure TForm1.divOptionsBGLinearClick(Sender: TObject);
begin
  OptionsBGStyle := 1;
  divOptionsBGLinearLabel.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  divOptionsBGRadialLabel.ElementHandle.style.setProperty('background','black');
  divOptionsBGSolidLabel.ElementHandle.style.setProperty('background','black');
  divOptionsBGCustomLabel.ElementHandle.style.setProperty('background','black');

  divCUstomCSSHolder.Visible := False;
  divCustomCSSTitle.Visible := False;

  divSelectColor.Visible := True;
  divColorPicker1.Visible := True;
  divColorPicker2.ElementHandle.classList.Replace('d-none','d-flex');
  UpdateColorPickerSize;
  UpdatecolorPickerHexagon;
  UpdateColorPickerRGB;

end;

procedure TForm1.divOptionsBGRadialClick(Sender: TObject);
begin
  OptionsBGStyle := 0;
  divOptionsBGRadialLabel.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  divOptionsBGLinearLabel.ElementHandle.style.setProperty('background','black');
  divOptionsBGSolidLabel.ElementHandle.style.setProperty('background','black');
  divOptionsBGCustomLabel.ElementHandle.style.setProperty('background','black');

  divCUstomCSSHolder.Visible := False;
  divCustomCSSTitle.Visible := False;

  divSelectColor.Visible := True;
  divColorPicker1.Visible := True;
  divColorPicker2.ElementHandle.classList.Replace('d-none','d-flex');
  UpdateColorPickerSize;
  UpdatecolorPickerHexagon;
  UpdateColorPickerRGB;
end;

procedure TForm1.divOptionsBGSolidClick(Sender: TObject);
begin
  OptionsBGStyle := 2;
  divOptionsBGSolidLabel.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  divOptionsBGLinearLabel.ElementHandle.style.setProperty('background','black');
  divOptionsBGRadialLabel.ElementHandle.style.setProperty('background','black');
  divOptionsBGCustomLabel.ElementHandle.style.setProperty('background','black');

  divCUstomCSSHolder.Visible := False;
  divCustomCSSTitle.Visible := False;

  divSelectColor.Visible := True;
  divColorPicker1.Visible := True;
  divColorPicker2.ElementHandle.classList.Replace('d-none','d-flex');
  UpdateColorPickerSize;
  UpdatecolorPickerHexagon;
  UpdateColorPickerRGB;

end;

procedure TForm1.divProxyCustomClick(Sender: TObject);
begin
  OptionsProxyStatus := 2;
  divProxy.Visible := True;
  labelProxyDefault.ElementHandle.style.setProperty('background','black');
  labelProxyNone.ElementHandle.style.setProperty('background','black');
  labelProxyCustom.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
end;

procedure TForm1.divProxyDefaultClick(Sender: TObject);
begin
  OptionsProxyStatus := 0;
  divProxy.Visible := False;
  labelProxyDefault.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelProxyNone.ElementHandle.style.setProperty('background','black');
  labelProxyCustom.ElementHandle.style.setProperty('background','black');
end;

procedure TForm1.divProxyNoneClick(Sender: TObject);
begin
  OptionsProxyStatus := 1;
  divProxy.Visible := False;
  labelProxyDefault.ElementHandle.style.setProperty('background','black');
  labelProxyNone.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelProxyCustom.ElementHandle.style.setProperty('background','black');
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
    if Gongs[I] <> nil then
    begin
      divButtons.ElementHAndle.appendChild(Gongs[I].ElementHandle);
    end;
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
                          'top:'+FloatToStrF(PositionsY[I],ffGeneral,10,5)+'px;'+
                          'left:'+FloatToSTrF(PositionsX[I],ffGeneral,10,5)+'px;'+
                          'width:'+FloatToStrF(HexRadius*2,ffGeneral,10,5)+'px;'+
                          'height:'+FloatToSTrf(HexRadius*2,ffGeneral,10,5)+'px;'+
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
  while I < min(Length(Gongs), Length(PositionsG)) do
  begin
    if Gongs[I] <> nil  then
    begin
      Gongs[I].ElementHandle.style.setProperty('font-size',IntToStr(Trunc(HexRadius))+'px');
      Gongs[I].ElementHandle.style.setProperty('width',FloatToStrF(HexRadius * 2,ffGeneral,10,5)+'px');
      Gongs[I].ElementHandle.style.setProperty('height',FloatToStrF(HexRadius * 2,ffGeneral,10,5)+'px');
      document.GetElementById('BG-'+IntToStr(GongsP[I])).appendChild(Gongs[I].ElementHandle);
    end;
    I := I + 1;
  end;

end;

procedure TForm1.editProxyChange(Sender: TObject);
begin
  OptionsProxy := editProxy.Text;
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
    setLength(PositionsV, I+1);
    setLength(PositionsT, I+1);

    PositionsX[I] := X;
    PositionsY[I] := Y;
    PositionsR[I] := RowCount;
    PositionsC[I] := ColCount;
    PositionsV[I] := False;
    PositionsT[I] := False;
    if Length(PositionsG) < length(PositionsX) then
    begin
      setLength(PositionsG, max(Length(PositionsG), Length(PositionsX)));
      PositionsG[Length(PositionsG)-1] := -1;
    end;

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

  divBackground.ElementHandle.style.setProperty('margin-top',FloatToStrF(MarginTop,ffGeneral,10,5)+'px');

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

  SetLength(Animation,     AnimatedElements);
  SetLength(AnimationDiv,  Animatedelements);
  SetLength(AnimationDir,  AnimatedElements);
  SetLength(AnimationLast, AnimatedElements);

  for I := 0 to AnimatedElements - 1 do
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
    AnimationDir[I] := I mod 6;

    // Launch Animation Timers
    asm
      const index = I;
      const This = this;
      var timer = setInterval(function() {
        This.Animate(index);
      },1050 + index*100);
      this.AnimationTimers.push(timer);
    end;

  end;
end;

procedure TForm1.StopAnimation;
var
  i: Integer;
begin

  asm
    while (this.AnimationTimers.length > 0) {
      clearInterval(this.AnimationTimers.pop());
    }
  end;

  i := 0;
  while i < Length(AnimationDiv) do
  begin
    AnimationDiv[i].ElementHandle.style.setProperty('opacity','0');
    i := i + 1;
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
      for I := 0 to AnimatedElements - 1 do
        if NextPos = Animation[I] then Direction := -1;

    // If we haven't come up with a better move, than stay put for now
    if Direction = -1
    then NextPos := CurrPos;

    Loop := Loop + 1;
  end;

  // Trigger the Movement
  AnimationDiv[Anim].ElementHandle.style.setProperty('top',FloatToSTrF(PositionsY[NextPos] + MarginTop - 5,ffGeneral,10,5)+'px');
  AnimationDiv[Anim].ElementHandle.style.setProperty('left',FloatToSTrF(PositionsX[NextPos] - 3,ffGeneral,10,5)+'px');

  // Set Animation States for next time
  AnimationDir[Anim] := Direction;
  AnimationLast[Anim] := Animation[Anim];
  Animation[Anim] := NextPos;

end;

end.