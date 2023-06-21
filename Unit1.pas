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

  WEBLib.REST,
  WEBLib.JSON,
  WEBLib.Graphics,
  WEBLib.Controls,
  WEBLib.Forms,
  WEBLib.Dialogs,
  WEBLib.WebCtrls,
  WEBLib.ExtCtrls,
  WEBLib.StdCtrls,
  WEBLib.ComCtrls,
  WEBLib.Devices,
  WEBLib.Crypto;

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
    divShade: TWebHTMLDiv;
    divOptions: TWebHTMLDiv;
    divOptionsList: TWebHTMLDiv;
    btnOptionsName: TWebButton;
    btnOptionsBackground: TWebButton;
    btnOptionsImage: TWebButton;
    btnOptionsAudio: TWebButton;
    btnOptionsOK: TWebButton;
    btnOptionsCancel: TWebButton;
    btnOptionsSettings: TWebButton;
    divOptionsCursor: TWebHTMLDiv;
    pageControl: TWebPageControl;
    pageName: TWebTabSheet;
    divTitleHolder: TWebHTMLDiv;
    editTitle: TWebEdit;
    divProjectTitle: TWebHTMLDiv;
    labelProjectTitle: TWebLabel;
    divHexaGongName: TWebHTMLDiv;
    labelHexaGongName: TWebLabel;
    divHexName: TWebHTMLDiv;
    editHexName: TWebEdit;
    divProjectDescription: TWebHTMLDiv;
    labelProjectDescription: TWebLabel;
    divProjDesc: TWebHTMLDiv;
    memoProjDesc: TWebMemo;
    divHexaGongDescription: TWebHTMLDiv;
    labelHexaGongDescription: TWebLabel;
    divHexDesc: TWebHTMLDiv;
    memoHexDesc: TWebMemo;
    pageBackground: TWebTabSheet;
    WebHTMLDiv7: TWebHTMLDiv;
    WebLabel5: TWebLabel;
    divBackgroundStyles: TWebHTMLDiv;
    divOptionsBGRadial: TWebHTMLDiv;
    divOptionsBGRadialLabel: TWebLabel;
    divOptionsBGLinear: TWebHTMLDiv;
    divOptionsBGLinearLabel: TWebLabel;
    divOptionsBGSolid: TWebHTMLDiv;
    divOptionsBGSolidLabel: TWebLabel;
    divOptionsBGCustom: TWebHTMLDiv;
    divOptionsBGCustomLabel: TWebLabel;
    divSelectColor: TWebHTMLDiv;
    labelSelectColor: TWebLabel;
    divCustomCSSTitle: TWebHTMLDiv;
    WebLabel22: TWebLabel;
    divCustomCSSHolder: TWebHTMLDiv;
    memoCustomCSS: TWebMemo;
    divColorPicker1: TWebHTMLDiv;
    divColorPicker2: TWebHTMLDiv;
    pageImage: TWebTabSheet;
    divImageSourceLabel: TWebHTMLDiv;
    WebLabel6: TWebLabel;
    divImageSources: TWebHTMLDiv;
    divImageSourceIcon: TWebHTMLDiv;
    labelImageSourceIcon: TWebLabel;
    divImageSourceURL: TWebHTMLDiv;
    labelImageSourceURL: TWebLabel;
    divImageSourceUpload: TWebHTMLDiv;
    labelImageSourceUpload: TWebLabel;
    divImageSource: TWebHTMLDiv;
    editImageSource: TWebEdit;
    divIconPicker: TWebHTMLDiv;
    divIconInterface: TWebHTMLDiv;
    divIconSearch: TWebHTMLDiv;
    editIconSearch: TWebEdit;
    btnIconSearchEditCancel: TWebButton;
    btnIconOK: TWebButton;
    btnIconCancel: TWebButton;
    btnIconSearch: TWebButton;
    divIconSearchLabel: TWebHTMLDiv;
    labelIconSearch: TWebLabel;
    divIconInfo: TWebHTMLDiv;
    labelIconInfo: TWebLabel;
    divResultsOuter: TWebHTMLDiv;
    divResultsInner: TWebHTMLDiv;
    divImageAdjustments: TWebHTMLDiv;
    divImageAdjustmentsLabel: TWebHTMLDiv;
    labelImageAdjustments: TWebLabel;
    btnImageReset: TWebButton;
    divImageEditor: TWebHTMLDiv;
    divAdjWidthHolder: TWebHTMLDiv;
    divAdjSkewXHolder: TWebHTMLDiv;
    divAdjRotateHolder: TWebHTMLDiv;
    divAdjShiftXHolder: TWebHTMLDiv;
    divAdjHeightHolder: TWebHTMLDiv;
    divAdjSkewYHolder: TWebHTMLDiv;
    divAdjOpacityHolder: TWebHTMLDiv;
    divAdjShiftYHolder: TWebHTMLDiv;
    divImagePreview: TWebHTMLDiv;
    divImageBG: TWebHTMLDiv;
    divImage: TWebHTMLDiv;
    pageAudio: TWebTabSheet;
    divAudoSourceLabel: TWebHTMLDiv;
    labelAudioSource: TWebLabel;
    pageSettings: TWebTabSheet;
    divSettingsBGETitle: TWebHTMLDiv;
    labelSettingsBGETitle: TWebLabel;
    divCORSProxy: TWebHTMLDiv;
    labelCORSProxy: TWebLabel;
    divSettingsBGEChoices: TWebHTMLDiv;
    divOptionsBGENone: TWebHTMLDiv;
    labelOptionsBGENone: TWebLabel;
    divOptionsBGESix: TWebHTMLDiv;
    labelOptionsBGESix: TWebLabel;
    divOptionsBGETwelve: TWebHTMLDiv;
    labelOptionsBGETwelve: TWebLabel;
    divOptionsBGEEighteen: TWebHTMLDiv;
    labelOptionsBGEEighteen: TWebLabel;
    divProxyHolder: TWebHTMLDiv;
    divProxyDefault: TWebHTMLDiv;
    labelProxyDefault: TWebLabel;
    divProxyCustom: TWebHTMLDiv;
    labelProxyCustom: TWebLabel;
    divProxyNone: TWebHTMLDiv;
    labelProxyNone: TWebLabel;
    divProxy: TWebHTMLDiv;
    editProxy: TWebEdit;
    divOptionsBGBorder: TWebHTMLDiv;
    divOptionsBG: TWebHTMLDiv;
    divImageFG: TWebHTMLDiv;
    WebOpenDialog1: TWebOpenDialog;
    WebHttpRequest1: TWebHttpRequest;
    WebMediaCapture1: TWebMediaCapture;
    divAudioSources: TWebHTMLDiv;
    divAudioClip: TWebHTMLDiv;
    labelAudioClip: TWebLabel;
    divAudioURL: TWebHTMLDiv;
    labelAudioURL: TWebLabel;
    divAudioUpload: TWebHTMLDiv;
    labelAudioUpload: TWebLabel;
    divAudioRecord: TWebHTMLDiv;
    labelAudioRecord: TWebLabel;
    divAudioSource: TWebHTMLDiv;
    editAudioSource: TWebEdit;
    divAudioSet: TWebHTMLDiv;
    labelAudioSet: TWebLabel;
    divAudioClips: TWebHTMLDiv;
    divAudioPresetListLabel: TWebHTMLDiv;
    labelAudioClipsList: TWebLabel;
    divAudioClipTableHolder: TWebHTMLDiv;
    divAudioClipTable: TWebHTMLDiv;
    divAudioAdjustments: TWebHTMLDiv;
    divAudioAdjustmentsLabel: TWebHTMLDiv;
    labelAudioAdjustments: TWebLabel;
    btnAudioReset: TWebButton;
    divAudioRecording: TWebHTMLDiv;
    divAudioRecordingLabel: TWebHTMLDiv;
    labelAudioRecording: TWebLabel;
    WebCamera1: TWebCamera;
    divAudioControls: TWebHTMLDiv;
    divAudioRecordStart: TWebHTMLDiv;
    labelAudioRecordStart: TWebLabel;
    divAudioRecordStop: TWebHTMLDiv;
    labelAudioRecordStop: TWebLabel;
    divAudioWaveformHolder: TWebHTMLDiv;
    divAudioParams: TWebHTMLDiv;
    divAudioWaveformContainer: TWebHTMLDiv;
    divAudioWaveform: TWebHTMLDiv;
    divAudioStart: TWebHTMLDiv;
    divAudioEnd: TWebHTMLDiv;
    divAudioSets: TWebHTMLDiv;
    divAudioSetsLabel: TWebHTMLDiv;
    labelAudioSets: TWebLabel;
    divAudioSetsTableHolder: TWebHTMLDiv;
    divAudioSetsTable: TWebHTMLDiv;
    divAboutHexaGongs: TWebHTMLDiv;
    labelAboutHexaGongs: TWebLabel;
    divAboutHexaGongsHolder: TWebHTMLDiv;
    divAboutHexaGongsContent: TWebHTMLDiv;
    divSetStyle: TWebHTMLDiv;
    divSeries: TWebHTMLDiv;
    labelSeries: TWebLabel;
    divParallel: TWebHTMLDiv;
    labelParallel: TWebLabel;
    procedure GeneratePositions;
    [async] procedure WebFormCreate(Sender: TObject);
    procedure WebFormResize(Sender: TObject);
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
    procedure UpdateImageAdjustments;
    procedure UpdateImageAdjustmentsSize;
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
    procedure divImageSourceIconClick(Sender: TObject);
    procedure divImageSourceURLClick(Sender: TObject);
    procedure divImageSourceUploadClick(Sender: TObject);
    [async] procedure editImageSourceClick(Sender: TObject);
    procedure btnIconOKClick(Sender: TObject);
    procedure btnIconCancelClick(Sender: TObject);
    [async] procedure btnIconSearchClick(Sender: TObject);
    [async] procedure InitializeXData;
    procedure btnIconSearchEditCancelClick(Sender: TObject);
    procedure btnImageResetClick(Sender: TObject);
    procedure WebOpenDialog1GetFileAsBase64(Sender: TObject; AFileIndex: Integer; ABase64: string);
    procedure editImageSourceChange(Sender: TObject);
    [async] procedure PlayAudioClip(AudioClip: String; AudioProgress: TJSHTMLElement);
    [async] procedure SelectAudioClip(AudioClipName: String; AudioClip:String);
    procedure divAudioClipClick(Sender: TObject);
    [async] procedure editAudioSourceClick(Sender: TObject);
    procedure divAudioURLClick(Sender: TObject);
    procedure divAudioUploadClick(Sender: TObject);
    procedure divAudioRecordClick(Sender: TObject);
    procedure divAudioSetClick(Sender: TObject);
    procedure btnVolumeUpClick(Sender: TObject);
    procedure btnVolumeDownClick(Sender: TObject);
    procedure btnVolumeMuteClick(Sender: TObject);
    procedure WebOpenDialog1GetFileAsArrayBuffer(Sender: TObject; AFileIndex: Integer; ABuffer: TJSArrayBufferRecord);
    [async] procedure editAudioSourceChange(Sender: TObject);
    procedure divAudioRecordStartClick(Sender: TObject);
    procedure divAudioRecordStopClick(Sender: TObject);
    procedure WebMediaCapture1StopCapture(Sender: TObject; ABinary: TJSUint8Array; ABase: string);
    procedure UpdateWaveform;
    procedure divAudioWaveformHolderClick(Sender: TObject);
    procedure UpdateAudioParams;
    procedure btnAudioResetClick(Sender: TObject);
    procedure btnDownloadClick(Sender: TObject);
    [async] procedure btnUploadClick(Sender: TObject);
    procedure WebOpenDialog1GetFileAsText(Sender: TObject; AFileIndex: Integer; AText: string);
    procedure divSeriesClick(Sender: TObject);
    procedure divParallelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    AppProject: String;     // Name of Project
    AppVersion: String;     // Version Number
    AppRelease: String;     // Released
    AppStarted: TDateTime;  // Start Time

    GongID: Integer;                // Currently Editing
    Gongs: Array of TWebHTMLDiv;    // HexaGong UI elements
    GongsP: Array of Integer;       // Position of HexaGong
    GongData: JSValue;              // JSON describing HexaGong contents
    GongAudio: JSValue;             // Array of Array Buffers containing decoded audio data
    GongSource: JSValue;            // Array of AudioBufferSource elements that play the audio
    GongTimers: JSValue;            // Array of timers to stop audio when complete
    GongProgress: JSValue;          // Array of timers to show progress

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

    Server_URL: String; // Where can we find our XData server?
    ConfigData: TJSONObject;

    ZoomLevel: Integer;   // Number of hexagons in top row (always an odd number)
    HexRadius: Double;    // Radius of one hexagon (width = 2x)
    RowCount: Integer;    // Number of rows (includes odd and even)
    ColCount: Integer;    // Number of columns (just the number of hexagons in first row, always odd)
    MarginTop: Double;    // How much of an offset to center the hexagons vertically

    AudioCtx: JSValue;
    AudioGain: JSValue;
    AudioMediaDestination: JSValue;
    AudioStart: JSValue;
    MasterVolume: Double;
    MuteVolume: Double;

    OptionsNamesScroll: JSValue;       // SimpleBar reference
    OptionsBackgroundScroll: JSValue;  // SimpleBar reference
    OptionsImagesScroll: JSValue;      // SimpleBar reference
    OptionsAudioScroll: JSValue;       // SimpleBar reference
    OptionsSettingsScroll: JSValue;    // SimpleBar reference

    OptionsDiscardGong: Boolean;  // Keep track of whether we'll save the new HexaGong created

    // Options Background Page

    OptionsBGStyle: Integer;  // Radial, Linear, or Solid
    OptionsBGColor1: String;  // CSS Color Value
    OptionsBGColor2: String;  // Hex RGB Value
    OptionsBGCustom: String;  // Custom CSS value

    // Options Image Page

    OptionsImageStyle: Integer;  // Icon, URL, Upload
    OptionsImageRef: String;     // Nice Icon name, URL, Data URI
    OptionsImageIcon: String;    // Internal Icon name
    OptionsImageURL: String;     // Internal URL
    OptionsImageFile: String;    // Internal Filename
    ImageData: String;           // Image applied to <img> src attribute

    IconSetList: JSValue;            // Icon sets retrieved from server
    IconSetNames: Array of String;   // Icon set names
    IconSetCount: Array of Integer;  // How many icons in each set
    IconResults: Integer;            // How many total icons

    ImageW: String;   // Width    (transform: scaleX %)
    ImageH: String;   // Height   (transform: scaleY %)
    ImageL: String;   // Left     (transform: translateX %)
    ImageT: String;   // Top      (transform: translateY %)
    ImageX: String;   // X        (transform: skewX %)
    ImageY: String;   // Y        (transform: skewY %)
    ImageR: String;   // Rotation (transform: rotate deg)
    ImageO: String;   // Opacity  (opacity)

    pz: JSValue; // Image Pan/Zoom object

    // Options Audio Page

    OptionsAudioStyle: Integer;  // AudioClip, Upload, Record, etc.
    OptionsAudioFile: String;    // Name of audio file
    OptionsAudioTime: Double;    // Length (seconds) of audio file
    tabAudioClips: JSValue;      // Tabulator for Audio Clips
    tabAudioSets: JSValue;       // Tabulator for Audio Sets
    AudioClipsPlaying: JSValue;  // Array of currently playing clips

    AudioPreview: JSValue;          // AudioBufferSource for preview
    AudioPreviewTimer: JSValue;     // Used to end preview
    AUdioPreviewProgress: JSValue;  // Used to update preview progress

    OptionsAudioGain: Integer;    // Audio Parameter: Gain
    OptionsAudioStart: Integer;   // Audio Parameter: Start Offset
    OptionsAudioEnd: Integer;     // audio Parameter: End Offset

    OptionsAudioSets: String;        // Selected Audio Sets
    OptionsAudioSetStyle: Integer;   // 0 = Series, 1 = Parallel
    OptionsAudioSetsData: JSValue;   // JSON used to populate table


    // Options Settings Page

    OptionsProxyStyle: Integer;   // Default, None, Custom
    OptionsProxy: String;         // Proxy server

  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.btnImageResetClick(Sender: TObject);
begin
  asm
    this.ImageW = "100";
    this.ImageH = "100";
    this.ImageT = "100";
    this.ImageL = "100";
    this.ImageX = "0";
    this.ImageY = "0";
    this.ImageR = "0";
    this.ImageO = "100";

    AdjWidth.value   = this.ImageW;
    AdjHeight.value  = this.ImageH;
    AdjShiftX.value  = this.ImageT;
    AdjShiftY.value  = this.ImageL;
    AdjSkewX.value   = this.ImageX;
    AdjSkewY.value   = this.ImageY;
    AdjRotate.value  = this.ImageR;
    AdjOpacity.value = this.ImageO;

    // Reset Pan/Zoom
    pas.Unit1.Form1.pz.reset();

    this.UpdateImageAdjustments();
  end;

end;

procedure TForm1.WebFormCreate(Sender: TObject);
var
  ConfigResponse: TJSXMLHttpRequest;
  ConfigData: TJSONObject;
  ConfigURL: String;
begin

  // Initialization
  asm
    this.AppProject = window.ProjectName.split('_')[0];
    this.AppVersion = window.ProjectName.split('_').slice(1).join('.');
    this.AppRelease = new luxon.DateTime.fromISO(new Date(document.lastModified).toISOString()).toFormat('yyyy-MMM-dd');
  end;
  AppStarted := Now;
  Caption := AppProject + ' v'+AppVersion + '- Welcome to HexaGongs!';
  console.log('App Version: '+AppProject+' v'+AppVersion);
  console.log('App Release: '+AppRelease);
  console.log('App Started: '+FormatDateTime('yyyy-MMM-dd hh:nn:ss',AppStarted));


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
  OptionsProxyStyle := 0;   // Default: Use HexaGongs proxy
  OptionsProxy := '';       // Nothing defined


  // Initialize GongData
  asm
    this.GongID = 0;
    this.GongData = {};
    this.GongData['HexaGongs Project Title'] = "New Project";
    this.GongData['HexaGongs Project Description'] = 'No Description';
    this.GongData['HexaGongs'] = [];
    this.GongData['Proxy Type'] = this.OptionsProxyStyle;
    this.GongData['Proxy URL'] = this.OptionsProxy;
  end;


  // Initialize Animation items
  AnimatedElements := 6;
  asm this.AnimationTimers = []; end;


  // JavaScript Sleep Function
  asm window.sleep = async function(msecs) {return new Promise((resolve) => setTimeout(resolve, msecs)); } end;


  // Initialize Web Audio API
  asm
    this.AudioCtx = new (window.AudioContext || window.webkitAudioContext)();
    this.AudioGain = new GainNode(this.AudioCtx);
    this.AudioAnalyser = new AnalyserNode(this.AudioCtx);
    this.AudioMediaDestination = new MediaStreamAudioDestinationNode(this.AudioCtx);
    this.GongAudio = [];
    this.GongSource = [];
    this.GongTimers = [];
    this.GongProgress = [];
    this.MasterVolume = 1.0;
    this.MuteVolume = 0.0;
  end;


  // Audio Clips Play Array
  asm
    this.AudioClipsPlaying = [];
  end;


  // Swap DOM positions of divBackground and divOptions so our gradients always work
  asm
    const swap = function (nodeA, nodeB) {
      const parentA = nodeA.parentNode;
      const siblingA = nodeA.nextSibling === nodeB ? nodeA : nodeA.nextSibling;

      // Move `nodeA` to before the `nodeB`
      nodeB.parentNode.insertBefore(nodeA, nodeB);

      // Move `nodeB` to before the sibling of `nodeA`
      parentA.insertBefore(nodeB, siblingA);
    };
    swap(divBackground,divOptions);
  end;


  // Enable Simplebar on Options pages
  asm
    this.OptionsNamesScroll      = new SimpleBar(document.getElementById('pageName'      ), { forceVisible: 'y', autoHide: false });
    this.OptionsBackgroundScroll = new SimpleBar(document.getElementById('pageBackground'), { forceVisible: 'y', autoHide: false });
    this.OptionsImagesScroll     = new SimpleBar(document.getElementById('pageImage'     ), { forceVisible: 'y', autoHide: false });
    this.OptionsAudioScroll      = new SimpleBar(document.getElementById('pageAudio'     ), { forceVisible: 'y', autoHide: false });
    this.OptionsSettingsScroll   = new SimpleBar(document.getElementById('pageSettings'  ), { forceVisible: 'y', autoHide: false });
  end;


  // Figure out what our server connection might be - Server_URL is a form variable
  Server_URL := '';
  try
    asm ConfigURL = window.location.origin+(window.location.pathname.split('/').slice(0,-1).join('/')+'/configuration.json').replace('/\/\//g','/'); end;
    WebHTTPRequest1.URL := ConfigURL;
    ConfigResponse := await( TJSXMLHttpRequest, WebHTTPRequest1.Perform() );
    if String(ConfigResponse.Response) <> '' then
    begin
      ConfigData := TJSONObject.ParseJSONValue(String(ConfigResponse.Response)) as TJSONObject;
      Server_URL := (ConfigData.GetValue('Server') as TJSONString).Value;
    end;
  except on E:Exception do
    begin
    end
  end;
  if (Server_URL = '') then
  begin
    Server_URL := 'http://localhost:65432/tms/xdata';
  end;


  // Load icon sets, counts
  InitializeXData;


  // Deal with button clicks that aren't on buttons directly
  asm
    divBackground.addEventListener('click', (event) => {
      var This = pas.Unit1.Form1;
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

        if (event.target.classList.contains('Gong')) {
          var playid = parseInt(event.target.getAttribute('gongid'));

          function stopplaying(hexid, element) {
            element.classList.remove('Playback');
            if (element.lastElementChild.classList.contains('progress')) {
              element.lastElementChild.remove();
            }
            clearInterval(This.GongTimers[hexid])
            clearTimeout(This.GongProgress[hexid]);
            This.GongSource[hexid].disconnect();
            This.GongSource[hexid].stop();
            This.GongSource[hexid] = null;
          }

          // If currently playing, stop
          if (event.target.classList.contains('Playback')) {
            stopplaying(playid, event.target);
          }

          // If not playing, start
          else {
            var sets = JSON.parse(event.target.getAttribute('audiosets'));
            var setstyle = event.target.getAttribute('audiosetstyle');
            if (sets !== null)  {
              // Play HexaGongs in parallel (all at the same time)
              if (setstyle == 'parallel') {
                sets.forEach(gong => {
                  var el = document.getElementById(gong);
                  el.click();
                });
              }
              // Play HexaGongs in series (one after another)
              else {
                var playdelay = 0;
                sets.forEach(gong => {
                  var el = document.getElementById(gong);
                  if (el !== null) {
                    setTimeout(function() { el.click(); }, playdelay);
                    playdelay += parseFloat(el.getAttribute('audiotime')) * 1000 * ((100 - (parseFloat(el.getAttribute('audiostart')) + parseFloat(el.getAttribute('audioend')))) / 100);
                  }
                });
              }
              return;
            }

            if (This.GongAudio[playid] == undefined) {
              return
            }

            event.target.classList.add('Playback');
            var ClipGain = parseFloat(event.target.getAttribute('audiogain'));
            var ClipStart = parseFloat(event.target.getAttribute('audiostart'));
            var ClipEnd = parseFloat(event.target.getAttribute('audioend'));
            var ClipGainNode = new GainNode(This.AudioCtx);

            ClipGainNode.gain.value = ClipGain / 100;
            This.GongSource[playid] = This.AudioCtx.createBufferSource();
            This.GongSource[playid].buffer = This.GongAudio[playid];
            This.GongSource[playid].connect(ClipGainNode).connect(This.AudioGain).connect(This.AudioCtx.destination);

            var offset = (ClipStart / 100) * This.GongSource[playid].buffer.duration;
            var playlength = ((100 - (ClipStart + ClipEnd)) / 100) * This.GongSource[playid].buffer.duration;

            This.GongSource[playid].start(0, offset, playlength);
            event.target.setAttribute('starttime',This.AudioCtx.currentTime);

            // Update progress display
            var progress = '<div class="progress" style="position:absolute; top:0px; left:0px; width:100%; height:100%; z-index:100; background:none; pointer-events:none;"><div>';
            event.target.innerHTML += progress;
            This.GongProgress[playid] = setInterval(function() {
              if (This.GongSource[playid] !== null) {
                var elapsed = Math.min(360, ((This.AudioCtx.currentTime - event.target.getAttribute('starttime'))  / playlength * 360.0));
                if (elapsed >= 360) {
                  stopplaying(playid, event.target);
                }
                else {
                  event.target.lastElementChild.style.setProperty('background','conic-gradient(#FFFFFF60 0deg '+elapsed+'deg, transparent '+elapsed+'deg 360deg)')
                }
              }
            },100);

            // Stop when we're done playing
            This.GongTimers[playid] = setTimeout(function() {
              stopplaying(playid, event.target);
            }, playlength * 1000);

          }
        }
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
          btnCursor.style.setProperty('z-index','15');
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
            pas.Unit1.Form1.UpdateImageAdjustmentsSize();
            pas.Unit1.Form1.UpdateAudioParams();
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


  // Hexagon Color Picker
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


    // RGB Color Picker
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


  // Icon Picker
  asm
    divResultsInner.addEventListener('click', (e) => {

      // Remove current highlight
      var selected = divResultsInner.querySelectorAll('.Selected');
      selected.forEach(el => {
        el.classList.remove('Selected');
      });
      pas.Unit1.Form1.btnIconOK.FEnabled = false;
      btnIconOK.setAttribute('disabled','');

     // What was clicked on? Could be the icon itself or the icon name
      var el = null;
      if (e.target.getAttribute('icon-library') !== null) {
        var el = e.target;
        this.ImageData = el.firstElementChild.outerHTML;
        this.OptionsImageIcon = el.lastElementChild.innerHTML;
        pas.Unit1.Form1.btnIconOKClick(null);
      } else if (e.target.classList.contains('IconName')) {
        var el = e.target.parentElement;
        el.classList.add('Selected');
        btnIconOK.removeAttribute('disabled');
        pas.Unit1.Form1.btnIconOK.FEnabled = true;
        labelIconInfo.innerHTML = '<div class="d-flex justify-content-between align-itens-center pe-3">'+
            '<div>Results: '+this.IconResults+'</div>'+
            '<div>'+el.getAttribute('icon-library')+'</div>'+
            '<div>'+el.getAttribute('icon-license')+'</div>'+
          '</div>';
      }
    });
  end;


  // Configure Image Adjustments Interface
  divImageEditor.Width := 965;
  divImageEditor.Height := 965;

  // Horizontal
  divAdjWidthHolder.Top := 0;
  divAdjWidthHOlder.Left := 5 + 40 - 4;
  divAdjWidthHolder.Width := (1000 - 40*2) + 8;
  divAdjWidthHolder.Height := 40;

  //Horizontal
  divAdjSkewXHolder.Top := 40 + 4;
  divAdjSkewXHolder.Left := 5 + 40*2 - 4;
  divAdjSkewXHolder.Width := (1000 - 40*4) + 8;
  divAdjSkewXHolder.Height := 40;

  // Vertical
  divAdjHeightHolder.Top := 40;
  divAdjHeightHolder.Left := 5 + 40;
  divAdjHeightHolder.Width := (1000 - 40*2) +8;
  divAdjHeightHolder.Height := 40;
  divAdjHeightHolder.ElementHandle.style.setProperty('transform-origin','top left');
  divAdjHeightHOlder.ElementHandle.style.setProperty('transform','rotate(90deg)');

  // Vertical
  divAdjSkewYHolder.Top := 40*2;
  divAdjSkewYHolder.Left := 5 + 40*2 + 4;
  divAdjSkewYHolder.Width := (1000 - 40*4) + 8;
  divAdjSkewYHolder.Height := 40;
  divAdjSkewYHolder.ElementHandle.style.setProperty('transform-origin','top left');
  divAdjSkewYHolder.ElementHandle.style.setProperty('transform','rotate(90deg)');

  // Vertical
  divAdjShiftYHolder.Top := 40*2;
  divAdjShiftYHolder.Left := 5 + (1000 - 40*2) - 4;
  divAdjShiftYHolder.Width := (1000 - 40*4) + 8;
  divAdjShiftYHolder.Height := 40;
  divAdjShiftYHolder.ElementHandle.style.setProperty('transform-origin','top left');
  divAdjShiftYHOlder.ElementHandle.style.setProperty('transform','rotate(90deg)');

  // Vertical
  divAdjOpacityHolder.Top := 40;
  divAdjOpacityHolder.Left := 5 +  (1000 - 40);
  divAdjOpacityHolder.Width := (1000 - 40*2) + 8;
  divAdjOpacityHolder.Height := 40;
  divAdjOpacityHolder.ElementHandle.style.setProperty('transform-origin','top left');
  divAdjOpacityHolder.ElementHandle.style.setProperty('transform','rotate(90deg)');

  // Horizontal
  divAdjShiftXHolder.Top := (1000 - 40*3) - 4;
  divAdjShiftXHolder.Left := 5 + 40*2 - 4;
  divAdjShiftXHolder.Width := (1000 - 40*4) + 8;
  divAdjShiftXHolder.Height := 40;

  //Horizontal
  divAdjRotateHolder.Top := (1000 - 40*2);
  divAdjRotateHolder.Left := 5 + 40 - 4;
  divAdjRotateHolder.Width := (1000 - 40*2) + 8;
  divAdjRotateHolder.Height := 40;

  //Center
  divImagePreview.Top := 2*40;
  divImagePreview.Left := 5 + 2*40;
  divImagePreview.Width := (1000 - 40*5);
  divImagePreview.Height := (1000 - 40*5);

  // Center
  divImageBG.Top := 40 + 8;
  divImageBG.Left := 5 + 40 + 8;
  divImageBG.Width := (1000 - 40*7) - 16;
  divImageBG.Height := (1000 - 40*7) - 16;

  // Center
  divImageFG.Top := 40 + 8;
  divImageFG.Left := 5 +  40 + 8;
  divImageFG.Width := (1000 - 40*7) - 16;
  divImageFG.Height := (1000 - 40*7) - 16;

  // Center
  divImage.Top := 40 + 8;
  divImage.Left := 5 + 40 - 8;
  divImage.Width := (1000 - 40*7) + 16;
  divImage.Height := (1000 - 40*7) - 16;


  // Image Adjustment Sliders
  asm
    divImageEditor.addEventListener('sl-input',function(e){
      var This = pas.Unit1.Form1;
      if (e.target.id == "AdjWidth") {
        This.ImageW = e.target.value;
      }
      else if (e.target.id == "AdjHeight") {
        This.ImageH = e.target.value;
      }
      else if (e.target.id == "AdjShiftX") {
        This.ImageL = e.target.value;
      }
      else if (e.target.id == "AdjShiftY") {
        This.ImageT = e.target.value;
      }
      else if (e.target.id == "AdjSkewX") {
        This.ImageX = e.target.value;
      }
      else if (e.target.id == "AdjSkewY") {
        This.ImageY = e.target.value;
      }
      else if (e.target.id == "AdjRotate") {
        This.ImageR = e.target.value;
      }
      else if (e.target.id == "AdjOpacity") {
        This.ImageO = e.target.value;
      }

      This.UpdateImageAdjustments();
    });
  end;


// Image mouse handling 'natively'
//  asm
//    // Mousewheel
//    function imagescroll(e) {
//      e.preventDefault();
//      var This = pas.Unit1.Form1;
//      This.ImageW = Math.min(Math.max(parseInt(parseInt(This.ImageW) + e.deltaY * -0.125), -200),400);
//      This.ImageH = Math.min(Math.max(parseInt(parseInt(This.ImageH) + e.deltaY * -0.125), -200),400);
//      AdjWidth.value = This.ImageW;
//      AdjHeight.value = This.ImageH;
//      This.UpdateImageAdjustments();
//    }
//    divImage.addEventListener('wheel',function(e) { imagescroll(e) });
//    divImagePreview.addEventListener('wheel',function(e) { imagescroll(e) });
//  end;


  // This loads up pan/zoom functionality
  asm
    this.pz = Panzoom(divImage, {
      animate: true,
      cursor: 'all-scroll',
      setTransform: (elem, { scale, x, y }) => {

        var This = pas.Unit1.Form1;
        This.ImageL = 100 + parseInt( 100 * x / divImage.offsetWidth * (divImage.offsetWidth / divImage.getBoundingClientRect().width));
        This.ImageT = 100 + parseInt( 100 * y / divImage.offsetHeight * (divImage.offsetWidth / divImage.getBoundingClientRect().width));
        This.ImageW = parseInt(scale * 100);
        This.ImageH = parseInt(scale * 100);

        AdjShiftX.value = This.ImageL;
        AdjShiftY.value = This.ImageT;
        AdjWidth.value = This.ImageW;
        AdjHeight.value = This.ImageH;

        divImage.style.setProperty('transform',
          'translate('+(This.ImageL - 100)+'%,'+(This.ImageT - 100)+'%) '+
          'scale('+This.ImageW/100+','+This.ImageH/100+') '+
          'skew('+(-This.ImageX)+'deg,'+(This.ImageY)+'deg) '+
          'rotate('+This.ImageR+'deg) ');

        This.UpdateImageAdjustments();
      }
    });
    divImage.addEventListener('wheel',pas.Unit1.Form1.pz.zoomWithWheel)
  end;


  // Setup Tabulator for Audio Clips table
  asm
    this.tabAudioClips =  new Tabulator("#divAudioClipTable", {
      layout: "fitColumns",
      placeholder: "No Audio Clips available.",
      rowHeight: 30,
      selectable: 1,
      headerVisible: false,
      columnDefaults:{
        resizable: false
      },
      columns: [
        { title: "Play", minWidth: 40, width: 40, hozAlign: "center", cssClass: "PlayClip",
          formatter: function(cell, formatterParams, onRendered) {
            return '<div style="width: 30px; height: 29px; margin: -3px 0px 0px 4px; padding: 4px 8px; "><i class="fa-solid fa-play fa-xl"></i></div>'
          },
          cellClick: function(e, cell) {
            pas.Unit1.Form1.tabAudioClips.selectRow(cell.getRow());
            pas.Unit1.Form1.PlayAudioClip(cell.getRow().getCell('FullName').getValue(), cell.getElement());
          },
        },
        { title: "Name", field: "Name" },
        { title: "Type", field: "Type", width: 50 },
        { title: "FullName", field: "FullName", visible: false },
        { title: "Size", field: "Size", width: 60, hozAlign: "right",
          formatter: function(cell, formatterParams, onRendered) {
            var audiosize = 0;
            if (parseInt(cell.getValue()) < 1024) {
              audiosize = cell.getValue()+' B';
            } else if (parseInt(cell.getValue()) < 1024*1024) {
              audiosize = parseInt(cell.getValue() / 1024)+' KB';
            } else if (parseInt(cell.getValue()) < 1024*1024*1024) {
              audiosize = parseInt(cell.getValue() / 1024 / 1024)+' MB';
            } else {
              audiosize = parseInt(cell.getValue() / 1024 / 1024 / 1024)+' GB';
            }
            return '<div style="padding-right: 8px;">'+audiosize+'</div>';
          }
        }
      ]
    });
    this.tabAudioClips.on('rowClick', function(e, row){
      pas.Unit1.Form1.tabAudioClips.selectRow(row);
    });
    this.tabAudioClips.on('rowDblClick', function(e, row){
      pas.Unit1.Form1.tabAudioClips.selectRow(row);
      pas.Unit1.Form1.SelectAudioClip(row.getCell('Name').getValue(),row.getCell('FullName').getValue());
    });
  end;


  // Setup Tabulator for Audio Sets table
  asm
    this.tabAudioSets =  new Tabulator("#divAudioSetsTable", {
      index: "ID",
      layout: "fitColumns",
      placeholder: "No HexaGongs available.",
      rowHeight: 30,
      selectable: 1,
      headerVisible: false,
      movableRows: true,
      columnDefaults:{
        resizable: false
      },
      initialSort: [
        {column:"Name", dir:"asc"},
        {column:"Sort", dir:"asc"}
      ],
      columns: [
        { title: "ID", field: "ID", visible: false },
        { title: "Selected", field: "Selected", width: 40, cssClass: "PlayClip",
          formatter: function(cell, formatterParams, onRendered) {
            if (cell.getValue() == false) {
              return '<div style="background: purple; width: 30px; height: 29px; margin: -3px 0px 0px 4px; padding: 5px 8px; "><i class="fa-solid fa-xmark fa-xl"></i></div>'
            }
            else {
              return '<div style="background: violet; width: 30px; height: 29px; margin: -3px 0px 0px 4px; padding: 5px 4px; "><i class="fa-solid fa-check fa-xl"></i></div>'
            }
          },
          cellClick: function(e, cell) {
            pas.Unit1.Form1.tabAudioClips.selectRow(cell.getRow());
            cell.setValue(!cell.getValue());
          },
        },
        { title: "Sort", field: "Sort", width: 30, minWidth:30, formatter: "handle", sorter: "number" },
        { title: "Name", field: "Name" },
        { title: "Length", field: "Length", width: 60, hozAlign: "right", formatter:"html" },
        { title: "PlayTime", field: "PlayTime", visible: false }
      ]
    });
    this.tabAudioSets.on('rowClick', function(e, row){
      pas.Unit1.Form1.tabAudioSets.selectRow(row);
    });
  end;


  // Audio Parameter Sliders
  asm
    divAudioParams.addEventListener('sl-input',function(e){
      var This = pas.Unit1.Form1;
      if (e.target.id == "SliderGain") {
        This.OptionsAudioGain = e.target.value;
      }
      else if (e.target.id == "SliderStart") {
        This.OptionsAudioStart = e.target.value;
      }
      else if (e.target.id == "SliderEnd") {
        This.OptionsAudioEnd = e.target.value;
      }
      pas.Unit1.Form1.UpdateAudioParams();
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
      UpdateImageAdjustmentsSize;
      UpdateWaveform;
      UpdateAudioParams;
    end;
  end;

end;

procedure TForm1.WebMediaCapture1StopCapture(Sender: TObject; ABinary: TJSUint8Array; ABase: string);
begin
  OptionsAudioFile := 'Locally Recorded Audio';
  asm
    var This = pas.Unit1.Form1;
    This.GongAudio[This.GongID] = This.AudioCtx.createBufferSource();
    This.AudioCtx.decodeAudioData(
      ABinary.buffer,
      (buffer) => {
        This.GongAudio[This.GongID] = buffer;
        This.OptionsAudioTime = buffer.duration;
        editAudioSource.value = This.OptionsAudioFile;
        This.UpdateWaveform();
        labelAudioAdjustments.firstElementChild.textContent = 'Adjustments [ '+buffer.duration.toFixed(1)+'s ]';
      }
    );
  end;
end;

procedure TForm1.WebOpenDialog1GetFileAsArrayBuffer(Sender: TObject; AFileIndex: Integer; ABuffer: TJSArrayBufferRecord);
begin
  OptionsAudioFile := WebOpenDialog1.Files[AFileIndex].Name;
  asm
    var This = pas.Unit1.Form1;
    This.GongAudio[This.GongID] = This.AudioCtx.createBufferSource();
    This.AudioCtx.decodeAudioData(
      ABuffer.jsarraybuffer,
      (buffer) => {
        This.GongAudio[This.GongID] = buffer;
        This.OptionsAudioTime = buffer.duration;
        editAudioSource.value = This.OptionsAudioFile;
        This.UpdateWaveform();
        labelAudioAdjustments.firstElementChild.textContent = 'Adjustments [ '+buffer.duration.toFixed(1)+'s ]';
      }
    );
  end;
end;

procedure TForm1.WebOpenDialog1GetFileAsBase64(Sender: TObject; AFileIndex: Integer; ABase64: string);
var
  ImageType: String;
begin
  // Figure out what kind of image we have
  OptionsImageFile := Lowercase(WebOpenDialog1.Files[AFileIndex].Name);
  if Pos('jpg',  OptionsImageFile) > 0 then ImageType := 'image/jpeg';
  if Pos('jpeg', OptionsImageFile) > 0 then ImageType := 'image/jpeg';
  if Pos('png',  OptionsImageFile) > 0 then ImageType := 'image/png';
  if Pos('gif',  OptionsImageFile) > 0 then ImageType := 'image/gif';
  if Pos('bmp',  OptionsImageFile) > 0 then ImageType := 'image/bmp';
  if Pos('webp', OptionsImageFile) > 0 then ImageType := 'image/webp';
  if Pos('svg',  OptionsImageFile) > 0 then ImageType := 'image/svg+xml';
  if Pos('ico',  OptionsImageFile) > 0 then ImageType := 'image/x-icon';

  // Set Form variables
  ImageData := '<img width="70%" src="data:'+ImageType+';base64,'+ABase64+'">';
  OptionsImageFile := WebOpenDialog1.Files[AFileIndex].Name;

  // Update interface
  editImageSource.Text := OptionsImageFile;
  divImage.HTML.Text := ImageData;
end;


procedure TForm1.WebOpenDialog1GetFileAsText(Sender: TObject; AFileIndex: Integer; AText: string);
var
  i: Integer;
  GongHTML: String;
  GongCount: Integer;
  GongDeleted: Boolean;
  AppTitle: String;
begin
  GongCount := 0;
  GongHTML := '';
  AppTitle := '';

  asm
    function base64ToArrayBuffer(base64) {
      var binary_string =  window.atob(base64);
      var len = binary_string.length;
      var bytes = new Uint8Array( len );
      for (var i = 0; i < len; i++)        {
        bytes[i] = binary_string.charCodeAt(i);
      }
      return bytes.buffer;
    }

    var This = pas.Unit1.Form1;
    var Saved = JSON.parse(AText);

    if (Saved.SaveFormat == 'JSON') {
      This.ZoomLevel        = Saved.ZoomLevel;
      This.AnimatedElements = Saved.AnimatedElements;
      This.GongData         = JSON.parse(Saved.GongData);
      This.PositionsR       = JSON.parse(Saved.PositionsR);           
      This.PositionsC       = JSON.parse(Saved.PositionsC);           
      This.PositionsG       = JSON.parse(Saved.PositionsG);           
      This.GongsP           = JSON.parse(Saved.GongsP);         
      var AudioStrings      = JSON.parse(Saved.Audio);

      for (var i = 0; i < AudioStrings.length; i++) {
        if ((AudioStrings[i] !== null) && (AudioStrings[i] !== undefined)) {
          var decoder = new aas.Decoder();
          This.GongAudio[i] = decoder.execute(base64ToArrayBuffer(AudioStrings[i]));
        }
      }

      GongCount = This.GongData['HexaGongs'].length;
      AppTitle = This.GongData['HexaGongs Project Title'];
    }

  end;

  setLength(Gongs, GongCount);
  i := 0;
  while i < length(Gongs) do
  begin
    GongDeleted := False;
    asm
      GongHTML = pas.Unit1.Form1.GongData['HexaGongs'][i]['Image Data'];
      GongDeleted = pas.Unit1.Form1.GongData['HexaGongs'][i]['Deleted'];
    end;

    if not(GongDeleted) then
    begin
      Gongs[i] := TWebHTMLDiv.Create('Gong-'+IntToStr(i));
      Gongs[i].Parent := divButtons;
      Gongs[i].ElementFont := efCSS;
      Gongs[i].ElementPosition := epAbsolute;
      Gongs[i].ElementHandle.setAttribute('gongid',IntToStr(i));
      Gongs[i].ElementHandle.classList.Add('Gong','d-flex','justify-content-center','align-items-center','text-white');
      Gongs[i].ElementHandle.style.setProperty('z-index','10');
      Gongs[i].ElementHandle.setAttribute('position',IntToStr(GongsP[i]));
      Gongs[i].ElementHandle.setAttribute('row',IntToStr(PositionsR[GongsP[i]]));
      Gongs[i].ElementHandle.setAttribute('column',IntToStr(PositionsC[GongsP[i]]));
      Gongs[i].HTML.Text := GongHTML;

      asm
    
        var This = pas.Unit1.Form1;
        var gong = document.getElementById('Gong-'+i).firstElementChild;
      
        This.ImageW = This.GongData['HexaGongs'][i]['Image W'];
        This.ImageH = This.GongData['HexaGongs'][i]['Image H'];
        This.ImageT = This.GongData['HexaGongs'][i]['Image T'];
        This.ImageL = This.GongData['HexaGongs'][i]['Image L'];
        This.ImageX = This.GongData['HexaGongs'][i]['Image X'];
        This.ImageY = This.GongData['HexaGongs'][i]['Image Y'];
        This.ImageR = This.GongData['HexaGongs'][i]['Image R'];
        This.ImageO = This.GongData['HexaGongs'][i]['Image O'];

        This.OptionsBGStyle = parseInt(This.GongData['HexaGongs'][i]['BG Style']);
        This.OptionsBGColor1 = This.GongData['HexaGongs'][i]['BG Color 1'];
        This.OptionsBGColor2 = This.GongData['HexaGongs'][i]['BG Color 2'];
        This.OptionsBGCustom = This.GongData['HexaGongs'][i]['BG Custom'];

        This.OptionsAudioStyle = parseInt(This.GongData['HexaGongs'][i]['Audio Style']);
        This.OptionsAudioTime = parseFloat(This.GongData['HexaGongs'][i]['Audio Time']);
        This.OptionsAudioFile = This.GongData['HexaGongs'][i]['Audio File'];
        This.OptionsAudioGain = parseInt(This.GongData['HexaGongs'][i]['Audio Gain']);
        This.OptionsAudioStart = parseInt(This.GongData['HexaGongs'][i]['Audio Start']);
        This.OptionsAudioEnd = parseInt(This.GongData['HexaGongs'][i]['Audio End']);
        This.OptionsAudioSets = This.GongData['HexaGongs'][i]['Audio Sets'];
        This.OptionsAudioSetStyle = This.GongData['HexaGongs'][i]['Audio Set Style'];
      
        gong.style.setProperty('transform',
          'translate('+(This.ImageL - 100)+'%,'+(This.ImageT - 100)+'%) '+
          'scale('+This.ImageW/100+','+This.ImageH/100+') '+
          'skew('+(-This.ImageX)+'deg,'+(This.ImageY)+'deg) '+
          'rotate('+This.ImageR+'deg) ');
        gong.style.setProperty('opacity',This.ImageO / 100);

      
      end;

      // Update UI element - Background
      if OptionsBGStyle = 0
      then Gongs[i].ElementHandle.style.setProperty('background','radial-gradient(black,'+OptionsBGColor1+')')
      else if OptionsBGStyle = 1
      then Gongs[i].ElementHandle.style.setProperty('background','linear-gradient(60deg,black,'+OptionsBGColor1+')')
      else if OptionsBGStyle = 2
      then Gongs[i].ElementHandle.style.setProperty('background',OptionsBGColor1)
      else
      begin
        Gongs[i].ElementHandle.style.cssText := OptionsBGCustom;
      end;

      // Update UI element - Audio
      Gongs[i].ElementHandle.setAttribute('audiotime', FloatToStr(OptionsAudioTime));
      Gongs[i].ElementHandle.setAttribute('audiogain', IntToStr(OptionsAudioGain));
      Gongs[i].ElementHandle.setAttribute('audiostart', IntToStr(OptionsAudioStart));
      Gongs[i].ElementHandle.setAttribute('audioend', IntToStr(OptionsAudioEnd));
      if OptionsAudioStyle = 4 then
      begin
        Gongs[i].ElementHandle.setAttribute('audiosets',OptionsAudioSets);
        if OptionsAudioSetStyle = 0
        then Gongs[i].ElementHandle.setAttribute('audiosetstyle','series')
        else Gongs[i].ElementHandle.setAttribute('audiosetstyle','parallel');
      end
      else
      begin
        Gongs[i].ElementHandle.removeAttribute('audiosets');
        Gongs[i].ElementHandle.removeAttribute('audiosetstyle');
      end;
    end;

    i := i + 1;
  end;
    
  // Force a complete refresh

  Caption := AppProject + ' v'+AppVersion + ' - ' + Trim(AppTitle);

  btnMainClick(nil);
  StopAnimation;
  GeneratePositions;
  DrawBackground;
  StartAnimation;
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

  // Enable our Shoelace Range Sliders
  divColorPicker2.HTML.Text     := StringReplace(divColorPicker2.HTML.Text,    'slX-range','sl-range',[rfReplaceAll]);
  divAdjWidthHolder.HTML.Text   := StringReplace(divAdjWidthHolder.HTML.Text,  'slX-range','sl-range',[rfReplaceAll]);
  divAdjHeightHolder.HTML.Text  := StringReplace(divAdjHeightHolder.HTML.Text, 'slX-range','sl-range',[rfReplaceAll]);
  divAdjShiftXHolder.HTML.Text  := StringReplace(divAdjShiftXHolder.HTML.Text, 'slX-range','sl-range',[rfReplaceAll]);
  divAdjShiftYHolder.HTML.Text  := StringReplace(divAdjShiftYHolder.HTML.Text, 'slX-range','sl-range',[rfReplaceAll]);
  divAdjSkewXHolder.HTML.Text   := StringReplace(divAdjSkewXHolder.HTML.Text,  'slX-range','sl-range',[rfReplaceAll]);
  divAdjSkewYHolder.HTML.Text   := StringReplace(divAdjSkewYHolder.HTML.Text,  'slX-range','sl-range',[rfReplaceAll]);
  divAdjRotateHolder.HTML.Text  := StringReplace(divAdjRotateHolder.HTML.Text, 'slX-range','sl-range',[rfReplaceAll]);
  divAdjOpacityHolder.HTML.Text := StringReplace(divAdjOpacityHolder.HTML.Text,'slX-range','sl-range',[rfReplaceAll]);
  divAudioParams.HTML.Text      := StringReplace(divAudioParams.HTML.Text,     'slX-range','sl-range',[rfReplaceAll]);

end;

procedure TForm1.UpdateAudioParams;
begin
  asm
    var This = pas.Unit1.Form1;
    var range = divAudioParams.getBoundingClientRect().width - 86;

    SliderGain.value = This.OptionsAudioGain;
    ThumbGain.style.setProperty("left",range * (This.OptionsAudioGain / 200) +'px');
    if (This.OptionsAudioGain == 100) {
      ThumbGain.innerHTML = '<i class="fa-solid fa-volume-high fa-lg text-white"></i>';
    }
    else {
      ThumbGain.innerHTML = "<div class='ThumbLabel'>"+This.OptionsAudioGain+"%</dvi>";
    }

    SliderStart.value = This.OptionsAudioStart;
    ThumbStart.style.setProperty("left",range * (This.OptionsAudioStart / 100) +'px');
    if (This.OptionsAudioStart == 0) {
      ThumbStart.innerHTML = '<i class="fa-solid fa-arrow-right-from-bracket fa-lg text-white"></i>';
    }
    else {
      ThumbStart.innerHTML = "<div class='ThumbLabel'>"+This.OptionsAudioStart+"%</dvi>";
    }
    divAudioStart.style.setProperty('position','absolute');
    divAudioStart.style.setProperty('top','0px');
    divAudioStart.style.setProperty('left','0px');
    divAudioStart.style.setProperty('width',(10 + (divAudioWaveform.getBoundingClientRect().width - 20) * (This.OptionsAudioStart / 100))+'px');
    divAudioStart.style.setProperty('height','68px');
    divAudioStart.style.setProperty('background','linear-gradient(to right,#00000080, #EE82EEC0)'); // violet 50% opacity

    SliderEnd.value = This.OptionsAudioEnd;
    ThumbEnd.style.setProperty("left",range * ((100 - This.OptionsAudioEnd) / 100) +'px');
    if (This.OptionsAudioEnd == 0) {
      ThumbEnd.innerHTML = '<i class="fa-solid fa-arrow-right-from-bracket fa-lg fa-flip-horizontal text-white"></i>';
    }
    else {
       ThumbEnd.innerHTML = "<div class='ThumbLabel'>"+This.OptionsAudioEnd+"%</dvi>";
    }
    divAudioEnd.style.setProperty('position','absolute');
    divAudioEnd.style.setProperty('top','0px');
    divAudioEnd.style.setProperty('right','0px');
    divAudioEnd.style.setProperty('width',(10 + (divAudioWaveform.getBoundingClientRect().width - 20) * (This.OptionsAudioEnd / 100))+'px');
    divAudioEnd.style.setProperty('height','68px');
    divAudioEnd.style.setProperty('background','linear-gradient(to left,#00000080, #EE82EEC0)'); // violet 50% opacity
  end;
  UpdateWaveform;
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
  scale := Min(avail / 440.0,5);
  space := scale*370.0;
  divColorPicker1.ElementHandle.style.setProperty('transform','scale('+FloatToSTrF(scale,ffGeneral,10,5)+')');
  divColorPicker1.ElementHandle.style.setProperty('height','unset');
  divColorPicker2.ElementHandle.style.setProperty('top',FloatToSTrF(space,ffGeneral,10,5)+'px','important');
end;

procedure TForm1.UpdateImageAdjustments;
begin
  asm
    var This = pas.Unit1.Form1;
    var range = 0;
    var scale = 1000 / divImageAdjustmentsLabel.getBoundingClientRect().width;

    range = scale * (AdjWidth.getBoundingClientRect().width - 24);
    ThumbWidth.style.setProperty("left",((parseInt(This.ImageW) + 200)  / 300) * range / 2 +'px');
    if (This.ImageW == 100) {
      ThumbWidth.innerHTML = '<div class="ThumbLabel"><i class="fa-solid fa-arrows-left-right fa-xl"></div>';
    }
    else {
      ThumbWidth.innerHTML = '<div class="ThumbLabel">'+(This.ImageW)+'%</div>';
    }

    range = scale * (AdjHeight.getBoundingClientRect().height - 28);
    ThumbHeight.style.setProperty("left", 2 + ((parseInt(This.ImageH) + 200) / 300) * range / 2 +'px');
    if (This.ImageH == 100) {
      ThumbHeight.innerHTML = '<div class="ThumbLabelR"><i class="fa-solid fa-arrows-up-down fa-xl"></div>';
    }
    else {
      ThumbHeight.innerHTML = '<div class="ThumbLabelR">'+(This.ImageH)+'%</div>';
    }

    range = scale * (AdjShiftX.getBoundingClientRect().width - 24);
    ThumbShiftX.style.setProperty("left",(This.ImageL  / 100) * range / 2 +'px');
    if (This.ImageL == 100) {
      ThumbShiftX.innerHTML = '<div style="transform: ShiftX(-15deg)" class="ThumbLabel"><i class="fa-solid fa-arrow-right fa-xl"></div>';
    }
    else {
      ThumbShiftX.innerHTML = '<div class="ThumbLabel">'+(This.ImageL -100)+'%</div>';
    }

    range = scale * (AdjShiftY.getBoundingClientRect().height - 28);
    ThumbShiftY.style.setProperty("left", 2 + (This.ImageT  / 100) * range / 2 +'px');
    if (This.ImageT == 100) {
      ThumbShiftY.innerHTML = '<div style="transform: ShiftX(15deg)" class="ThumbLabelR"><i class="fa-solid fa-arrow-up fa-xl"></div>';
    }
    else {
      ThumbShiftY.innerHTML = '<div class="ThumbLabelR">'+(100 - This.ImageT)+'%</div>';
    }

    range = scale * (AdjSkewX.getBoundingClientRect().width - 24);
    ThumbSkewX.style.setProperty("left",((This.ImageX + 90)  / 180) * range  +'px');
    if (This.ImageX == 0) {
      ThumbSkewX.innerHTML = '<div style="transform: skewX(-25deg)" class="ThumbLabel"><i class="fa-regular fa-square fa-xl"></div>';
    }
    else {
      ThumbSkewX.innerHTML = '<div class="ThumbLabel">'+(This.ImageX)+'°</div>';
    }

    range = scale * (AdjSkewY.getBoundingClientRect().height - 28);
    ThumbSkewY.style.setProperty("left",2 + ((This.ImageY + 90) / 180) * range +'px');
    if (This.ImageY == 0) {
      ThumbSkewY.innerHTML = '<div style="transform: skewX(25deg)" class="ThumbLabelR"><i class="fa-regular fa-square fa-xl"></div>';
    }
    else {
      ThumbSkewY.innerHTML = '<div class="ThumbLabelR">'+(-This.ImageY)+'°</div>';
    }

    range = scale * (AdjRotate.getBoundingClientRect().width - 24);
    ThumbRotate.style.setProperty("left",((This.ImageR + 180)  / 360) * range  +'px');
    if (This.ImageR == 0) {
      ThumbRotate.innerHTML = '<div class="ThumbLabel"><i class="fa-solid fa-arrows-spin fa-xl"></div>';
    }
    else {
      ThumbRotate.innerHTML = '<div class="ThumbLabel">'+(This.ImageR)+'°</div>';
    }

    range = scale * (AdjOpacity.getBoundingClientRect().height - 24);
    ThumbOpacity.style.setProperty("left",2 + (This.ImageO / 100) * range +'px');
    if (This.ImageO == 100) {
      ThumbOpacity.innerHTML = '<div class="ThumbLabelR"><i class="fa-solid fa-circle-half-stroke fa-xl"></div>';
    }
    else {
      ThumbOpacity.innerHTML = '<div class="ThumbLabelR">'+(This.ImageO)+'%</div>';
    }


    // Update Preview Image
    divImage.style.setProperty('transform',
      'translate('+(This.ImageL - 100)+'%,'+(This.ImageT - 100)+'%) '+
      'scale('+This.ImageW/100+','+This.ImageH/100+') '+
      'skew('+(-This.ImageX)+'deg,'+(This.ImageY)+'deg) '+
      'rotate('+This.ImageR+'deg) ');
    divImage.style.setProperty('opacity',This.ImageO / 100);

  end;
end;

procedure TForm1.UpdateImageAdjustmentsSize;
var
  avail: Double;
  scale: Double;
//  space: Double;
begin
  avail := divImageAdjustmentsLabel.ElementHandle.getBoundingClientRect.Width;
  scale := Min(avail / 980,5);
//  space := scale*1000;
  divImageEditor.ElementHandle.style.setProperty('transform','scale('+FloatToSTrF(scale,ffGeneral,10,5)+')');
//  divColorPicker1.ElementHandle.style.setProperty('height','unset');
//  divColorPicker2.ElementHandle.style.setProperty('top',FloatToSTrF(space,ffGeneral,10,5)+'px','important');
  divImageAdjustments.ElementHandle.Style.SetProperty('height',FloatToStrF(scale+45,ffGeneral,10,5)+'px');
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

procedure TForm1.UpdateWaveform;
begin

  if (GongID < 0) then
  begin
    divAudioWaveform.HTML.Text := '';
    exit;
  end;

  asm
    var This = pas.Unit1.Form1;
    var h = 64;
    var w = divAudioWaveform.getBoundingClientRect().width - 20;

    const detachedSVG = d3.create("svg");
    const audio = This.GongAudio[This.GongID];

    if (audio == undefined) {
      divAudioWaveform.replaceChildren();
      return;
    }

    const step = Math.floor(
      audio.getChannelData(0).length / w
    );

    const samplesL = [];
    for (let i = 0; i < w; i++) {
      samplesL.push(audio.getChannelData(0)[i * step]);
    }
    const samplesR = [];
    for (let i = 0; i < w; i++) {
      samplesR.push(audio.getChannelData(1)[i * step]);
    }

    detachedSVG.attr("width", w)
               .attr("height", h);

    const dataL = Array.from(samplesL.entries());
    const dataR = Array.from(samplesR.entries());

    const xValue = d => d[0];
    const yValue = d => d[1];

    const xScale = d3
      .scaleLinear()
      .domain([0, dataL.length - 1])
      .range([0, w]);

    // Draw Channel 0
    detachedSVG.selectAll('.ch0')
      .data(dataL)
      .enter()
      .append('rect')
        .attr('width', ((w / dataL.length) * 0.8))
        .attr('height', function (d) { return Math.abs(yValue(d) * 30 * This.OptionsAudioGain / 100)})
        .attr('x', function (d, i) { return (((w / dataL.length) * i) + ((w / dataL.length) * 0.1)) })
        .attr('y', function (d) { return 31 - Math.abs(yValue(d) * 30 * This.OptionsAudioGain / 100)})
        .attr('fill', 'silver');

    // Draw Channel 1
    detachedSVG.selectAll('.ch1')
      .data(dataR)
      .enter()
      .append('rect')
        .attr('width', ((w / dataL.length) * 0.8))
        .attr('height', function (d) { return Math.abs(yValue(d) * 30 * This.OptionsAudioGain / 100) })
        .attr('x', function (d, i) { return (((w / dataL.length) * i) + ((w / dataL.length) * 0.1)) })
        .attr('y', 31)
        .attr('fill', 'silver');

    divAudioWaveform.innerHTML = '<div style="width: '+w+'px; top: 2px; left: 10px; height: '+h+'px; width: '+w+'px; color: #fff; overflow:hidden; position:absolute;">'+
                                   detachedSVG.node().outerHTML+
                                 '</div>';
  end;
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
      Gongs[GongID].ElementFont := efCSS;
      Gongs[GongID].ElementPosition := epAbsolute;

      Gongs[GongID].ElementHandle.setAttribute('gongid',IntToStr(GongID));
      Gongs[GongID].ElementHandle.setAttribute('position',IntToStr(CursorPosition));
      Gongs[GongID].ElementHandle.setAttribute('row',IntToStr(PositionsR[CursorPosition]));
      Gongs[GongID].ElementHandle.setAttribute('column',IntToStr(PositionsC[CursorPosition]));

      Gongs[GongID].ElementHandle.classList.Add('Gong','d-flex','justify-content-center','align-items-center','dragswap','text-white');

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
        this.GongData['HexaGongs'][this.GongID]['Image Style'] = 0;
        this.GongData['HexaGongs'][this.GongID]['Image Ref'] = 'hexagon-fill';
        this.GongData['HexaGongs'][this.GongID]['Image Icon'] = 'hexagon-fill';
        this.GongData['HexaGongs'][this.GongID]['Image URL'] = '';
        this.GongData['HexaGongs'][this.GongID]['Image File'] = '';
        this.GongData['HexaGongs'][this.GongID]['Image Data'] = '<svg class="pe-none" width="75%" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 16 16"><path fill="currentColor" fill-rule="evenodd" d="M8.5.134a1 1 0 0 0-1 0l-6 3.577a1 1 0 0 0-.5.866v6.846a1 1 0 0 0 .5.866l6 3.577a1 1 0 0 0 1 0l6-3.577a1 1 0 0 0 .5-.866V4.577a1 1 0 0 0-.5-.866L8.5.134z"></path></svg>';
        this.GongData['HexaGongs'][this.GongID]['Image W'] = '100';
        this.GongData['HexaGongs'][this.GongID]['Image H'] = '100';
        this.GongData['HexaGongs'][this.GongID]['Image L'] = '100';
        this.GongData['HexaGongs'][this.GongID]['Image T'] = '100';
        this.GongData['HexaGongs'][this.GongID]['Image X'] = '0';
        this.GongData['HexaGongs'][this.GongID]['Image Y'] = '0';
        this.GongData['HexaGongs'][this.GongID]['Image R'] = '0';
        this.GongData['HexaGongs'][this.GongID]['Image O'] = '100';
        this.GongData['HexaGongs'][this.GongID]['Audio Style'] = 0;
        this.GongData['HexaGongs'][this.GongID]['Audio File'] = 'No audio selected';
        this.GongData['HexaGongs'][this.GongID]['Audio Time'] = 0;
        this.GongData['HexaGongs'][this.GongID]['Audio Gain'] = 100;
        this.GongData['HexaGongs'][this.GongID]['Audio Start'] = 0;
        this.GongData['HexaGongs'][this.GongID]['Audio End'] = 0;
        this.GongData['HexaGongs'][this.GongID]['Audio Sets'] = [];
        this.GongData['HexaGongs'][this.GongID]['Audio Sets Data'] = [];
        this.GongData['HexaGongs'][this.GongID]['Audio Set Style'] = 0;
       end;

    end
    else
    begin
      GongID := PositionsG[CursorPosition];
    end;

    // Edit Gong

    // Display Options dialog in a predetermined state
    divShade.ElementHandle.style.setProperty('visibility','visible');
    divShade.ElementHandle.style.SetProperty('opacity','0.7');
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
      this.OptionsImageIcon = this.GongData['HexaGongs'][this.GongID]['Image Icon'];
      this.OptionsImageURL = this.GongData['HexaGongs'][this.GongID]['Image URL'];
      this.OptionsImageFile = this.GongData['HexaGongs'][this.GongID]['Image File'];
      this.ImageData = this.GongData['HexaGongs'][this.GongID]['Image Data'];
      divImage.innerHTML = this.ImageData;

      this.ImageW = this.GongData['HexaGongs'][this.GongID]['Image W'];
      this.ImageH = this.GongData['HexaGongs'][this.GongID]['Image H'];
      this.ImageL = this.GongData['HexaGongs'][this.GongID]['Image L'];
      this.ImageT = this.GongData['HexaGongs'][this.GongID]['Image T'];
      this.ImageX = this.GongData['HexaGongs'][this.GongID]['Image X'];
      this.ImageY = this.GongData['HexaGongs'][this.GongID]['Image Y'];
      this.ImageR = this.GongData['HexaGongs'][this.GongID]['Image R'];
      this.ImageO = this.GongData['HexaGongs'][this.GongID]['Image O'];

      AdjWidth.value   = this.ImageW;
      AdjHeight.value  = this.ImageH;
      AdjShiftX.value  = this.ImageT;
      AdjShiftY.value  = this.ImageL;
      AdjSkewX.value   = this.ImageX;
      AdjSkewY.value   = this.ImageY;
      AdjRotate.value  = this.ImageR;
      AdjOpacity.value = this.ImageO;
    end;
    editImageSource.Text := OptionsImageRef;
    if OptionsImageStyle = 0 then divImageSourceIconClick(Sender);
    if OptionsImageStyle = 1 then divImageSourceURLClick(Sender);
    if OptionsImageStyle = 2 then divImageSourceUploadClick(Sender);


    // pageAudio
    asm
      this.OptionsAudioStyle = this.GongData['HexaGongs'][this.GongID]['Audio Style'];
      this.OptionsAudioFile = this.GongData['HexaGongs'][this.GongID]['Audio File'];
      this.OptionsAudioTime = this.GongData['HexaGongs'][this.GongID]['Audio Time'];
      this.OptionsAudioGain = this.GongData['HexaGongs'][this.GongID]['Audio Gain'];
      this.OptionsAudioStart = this.GongData['HexaGongs'][this.GongID]['Audio Start'];
      this.OptionsAudioEnd = this.GongData['HexaGongs'][this.GongID]['Audio End'];
      this.OptionsAudioSets = this.GongData['HexaGongs'][this.GongID]['Audio Sets'];
      this.OptionsAudioSetStyle = this.GongData['HexaGongs'][this.GongID]['Audio Set Style'];
      labelAudioAdjustments.firstElementChild.textContent = 'Adjustments [ '+this.OptionsAudioTime.toFixed(1)+'s ]';
    end;

    // Don't show any of these until we have to
    divAudioRecording.Visible := False;
    divAudioClips.Visible := False;
    divAudioSets.Visible := False;
    divAudioAdjustments.Visible := False;

    if OptionsAudioStyle = 0 then divAudioClipClick(Sender);
    if OptionsAudioStyle = 1 then divAudioURLClick(Sender);
    if OptionsAudioStyle = 2 then divAudioUploadClick(Sender);
    if OptionsAudioStyle = 3 then divAudioRecordClick(Sender);
    if OptionsAudioStyle = 4 then divAudioSetClick(Sender);

    if OptionsAudioSetStyle = 0 then divSeriesClick(Sender);
    if OptionsAudioSetStyle = 1 then divParallelClick(Sender);

    editAudioSource.Text := OptionsAudioFile;

    asm
      // Get list of known HexaGongs (not including the current HexaGong or deleted HexaGongs)
      this.OptionsAudioSetsData = [];
      for (var i = 0; i < this.GongData['HexaGongs'].length; i++) {
        if (parseInt(this.GongID) !== i) {
          if (this.GongData['HexaGongs'][i]['Deleted'] !== true) {
            this.OptionsAudioSetsData.push({
              "ID": i,
              "Selected": false,
              "Sort": 999,
              "Name": this.GongData['HexaGongs'][i]['Name'],
              "Length": '<div style="padding-right: 8px;">'+this.GongData['HexaGongs'][i]['Audio Time'].toFixed(1)+'s'+'</div>',
              "PlayTime": parseFloat(this.GongData['HexaGongs'][i]['Audio Time'])
            });
          }
        }
      }

      // update the list to reflect the last sort order and selection for this HexaGong.
      for (var i = 0; i < this.GongData['HexaGongs'][this.GongID]['Audio Sets Data'].length; i++) {
        var id = this.GongData['HexaGongs'][this.GongID]['Audio Sets Data'][i].ID;
        for (var j = 0; j < this.OptionsAudioSetsData.length; j++) {
          if (this.OptionsAudioSetsData[j].ID == id) {
            this.OptionsAudioSetsData[j].Sort     = this.GongData['HexaGongs'][this.GongID]['Audio Sets Data'][i].Sort;
            this.OptionsAudioSetsData[j].Selected = this.GongData['HexaGongs'][this.GongID]['Audio Sets Data'][i].Selected;
          }
        }
      }

      this.tabAudioSets.setData(this.OptionsAudioSetsData);
      this.tabAudioSets.setSort([
        {column:"Sort", dir:"asc"}
      ]);
    end;

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

    asm
      this.OptionsProxyStyle = this.GongData['Proxy Type'];
      this.OptionsProxy = this.GongData['Proxy URL'];
    end;
    editProxy.Text := OptionsProxy;
    if OptionsProxyStyle = 0 then divProxyDefaultClick(Sender)
    else if OptionsProxyStyle  = 1 then divProxyNoneClick(Sender)
    else if OptionsProxyStyle  = 2 then divProxyDefaultClick(Sender)

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

procedure TForm1.btnIconCancelClick(Sender: TObject);
begin
  asm
    divResultsInner.replaceChildren();
  end;

  divIconPicker.Visible := False;
end;

procedure TForm1.btnIconOKClick(Sender: TObject);
begin
  editImageSource.Text := OptionsImageIcon;
  btnIconCancelClick(Sender);
  divImage.HTML.Text := ImageData;
end;

procedure TForm1.btnIconSearchClick(Sender: TObject);
var
  Search: String;
  IconSize:Integer;
  MaxResults: Integer;
  SearchLib: String;
begin
  // Icon names are always lower case, so search with that
  Search := LowerCase(Trim(editIconSearch.text));

  // Limit returns while typing
  MaxResults := 500;
  if True then MaxResults := MaxResults; // hide compiler hint


  // Icon Size from slider - determines font-size
  IconSize := 40;
  if True then IconSize := IconSize; // hide compiler hint

  // Figure out which libraries we're searching through
  SearchLib := 'all';
  if True then SearchLib := SearchLib; // hide compiler hint


  // Must have something to search for and somewhere to search
  if Trim(Search) = '' then
  begin
    asm
      divResultsInner.replaceChildren();
    end;
  end
  else
  begin
    asm

      // Build a new results array
      var results = [];

      // Search for at most three terms
      var searchterms = Search.split(' ').slice(0,3).join(' ');

      var response = await fetch(this.Server_URL+'/HexaGongsService/SearchIcons'+
        '?SearchTerms='+encodeURIComponent(searchterms)+
        '&Results='+MaxResults);
      var results = await response.json();

      // Sort results by icon name
      results = results.sort((a, b) => {
        if (a[0] < b[0]) {
          return -1;
        }
      });

      // Update count
      labelIconInfo.innerHTML = 'Results: '+results.length;
      this.IconResults = results.length;

      // Clear existing results
      divResultsInner.replaceChildren();

      // Create icons for display
      var display = '';
      for (var i = 0; i < results.length; i++) {

        // Figure out which library we're using - note that it is now sorted differently
        var lib = this.IconSetList.find( o => o.library == results[i][1]);

        // Each library has its default width and height, and then overrides at the icon level
        var iconheight = results[i][2].height || lib.height;
        var iconwidth = results[i][2].width || lib.width;

        var displayicon = '<div style="font-size:'+IconSize+'px;" class="SearchIcon" '+
                               'icon-library="'+lib.name+'" '+
                               'icon-license="'+lib.license+'">'+
                             '<svg class="pe-none" width="70%" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" '+
                               'viewBox="0 0 '+iconwidth+' '+iconheight+'">'+
                                 results[i][2].body+
                             '</svg>'+
                             '<div class="IconName text-wrap" style="font-size:12px; text-align:center; width:100%;">'+
                               results[i][0]+
                             '</div>'+
                           '</div>';

        display += displayicon;
      }
      divResultsInner.innerHTML = display;
    end;

  end;
end;

procedure TForm1.btnIconSearchEditCancelClick(Sender: TObject);
begin
  editIconSearch.Text := '';
  editIconSearch.SetFocus;
  asm
    divResultsInner.replaceChildren();
  end;
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
  UpdateAudioParams;

  pageAudio.ElementHandle.style.setProperty('opacity','1');

  // Select current audioclip
  asm
    this.tabAudioClips.deselectRow();
  end;

  if OptionsAudioStyle = 0 then
  begin
    asm
      var rows = this.tabAudioClips.searchRows('Name','=',this.OptionsAudioFile);
      if (rows.length > 0) {
        this.tabAudioClips.selectRow(rows[0]);
      }
    end;
  end;

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

  // Update UI element - Background
  if OptionsBGStyle = 0
  then divImageBG.ElementHandle.style.setProperty('background','radial-gradient(black,'+OptionsBGColor1+')')
  else if OptionsBGStyle = 1
  then divImageBG.ElementHandle.style.setProperty('background','linear-gradient(60deg,black,'+OptionsBGColor1+')')
  else if OptionsBGStyle = 2
  then divImageBG.ElementHandle.style.setProperty('background',OptionsBGColor1)
  else
  begin
    OptionsBGCustom := memoCustomCSS.Lines.Text;
    divImageBG.ElementHandle.style.cssText := divImageBG.ElementHandle.style.cssText + memoCustomCSS.Lines.Text;
  end;

  pageControl.TabIndex := 2;
  UpdateOptionsCursor;
  UpdateImageAdjustmentsSize;
  UpdateImageAdjustments;
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
var
  Sets: String;
  Longest: Double;
  Combined: Double;
begin
  Sets := '';
  Longest := 0;
  Combined := 0;

  // Save Options to GongData JSON
  asm
    this.GongData['HexaGongs Project Title'] = this.editTitle.GetText();
    this.GongData['HexaGongs Project Description'] = this.memoProjDesc.GetText();
    this.GongData['Proxy Type'] = this.OptionsProxyStyle;
    this.GongData['Proxy URL'] = this.OptionsProxy;

    this.GongData['HexaGongs'][this.GongID]['Name'] = this.editHexName.GetText();
    this.GongData['HexaGongs'][this.GongID]['Description'] = this.memoHexDesc.GetText();

    this.GongData['HexaGongs'][this.GongID]['BG Style'] = this.OptionsBGStyle;
    this.GongData['HexaGongs'][this.GongID]['BG Color 1'] = this.OptionsBGColor1;
    this.GongData['HexaGongs'][this.GongID]['BG Color 2'] = this.OptionsBGColor2;
    this.GongData['HexaGongs'][this.GongID]['BG Custom'] = this.memoCustomCSS.GetText();

    this.GongData['HexaGongs'][this.GongID]['Image Style'] = this.OptionsImageStyle;
    this.GongData['HexaGongs'][this.GongID]['Image Ref'] = this.OptionsImageRef;
    this.GongData['HexaGongs'][this.GongID]['Image Icon'] = this.OptionsImageIcon;
    this.GongData['HexaGongs'][this.GongID]['Image URL'] = this.OptionsImageURL;
    this.GongData['HexaGongs'][this.GongID]['Image File'] = this.OptionsImageFile;
    this.GongData['HexaGongs'][this.GongID]['Image Data'] = this.ImageData;

    this.GongData['HexaGongs'][this.GongID]['Image W'] = this.ImageW;
    this.GongData['HexaGongs'][this.GongID]['Image H'] = this.ImageH;
    this.GongData['HexaGongs'][this.GongID]['Image T'] = this.ImageT;
    this.GongData['HexaGongs'][this.GongID]['Image L'] = this.ImageL;
    this.GongData['HexaGongs'][this.GongID]['Image X'] = this.ImageX;
    this.GongData['HexaGongs'][this.GongID]['Image Y'] = this.ImageY;
    this.GongData['HexaGongs'][this.GongID]['Image R'] = this.ImageR;
    this.GongData['HexaGongs'][this.GongID]['Image O'] = this.ImageO;

    this.GongData['HexaGongs'][this.GongID]['Audio Style'] = this.OptionsAudioStyle;
    this.GongData['HexaGongs'][this.GongID]['Audio File'] = this.OptionsAudioFile;
    this.GongData['HexaGongs'][this.GongID]['Audio Gain'] = this.OptionsAudioGain;
    this.GongData['HexaGongs'][this.GongID]['Audio Start'] = this.OptionsAudioStart;
    this.GongData['HexaGongs'][this.GongID]['Audio End'] = this.OptionsAudioEnd;
    this.GongData['HexaGongs'][this.GongID]['Audio Set Style'] = this.OptionsAudioSetStyle;

    var SelectedSets = [];
    for (var i = 0; i < this.tabAudioSets.getDataCount(); i++) {
      this.tabAudioSets.getRowFromPosition(i+1).getCell('Sort').setValue(i);
      if (this.tabAudioSets.getRowFromPosition(i+1).getCell('Selected').getValue() == true) {
        SelectedSets.push('Gong-'+this.tabAudioSets.getRowFromPosition(i+1).getCell('ID').getValue());
        Longest = Math.max(Longest, this.tabAudioSets.getRowFromPosition(i+1).getCell('PlayTime').getValue());
        Combined += this.tabAudioSets.getRowFromPosition(i+1).getCell('PlayTime').getValue();
      }
    }
    this.GongData['HexaGongs'][this.GongID]['Audio Sets Data'] = this.tabAudioSets.getData();
    this.GongData['HexaGongs'][this.GongID]['Audio Sets'] = JSON.stringify(SelectedSets);
    if (this.OptionsAudioStyle == 4) {
      if (this.OptionsAudioSetType == 0) {
        this.OptionsAudioTime = Longest;
      }
      else {
        this.OptionsAudioTime = Combined;
      }
    }
    Sets = JSON.stringify(SelectedSets);

    this.GongData['HexaGongs'][this.GongID]['Audio Time'] = this.OptionsAudioTime;

  end;

  Gongs[GongID].HTML.Text := divImage.HTML.Text;

  // Update UI element - Image
  asm
    var This = pas.Unit1.Form1;
    var gong = document.getElementById('Gong-'+this.GongID).firstElementChild;
    gong.style.setProperty('transform',
      'translate('+(This.ImageL - 100)+'%,'+(This.ImageT - 100)+'%) '+
      'scale('+This.ImageW/100+','+This.ImageH/100+') '+
      'skew('+(-This.ImageX)+'deg,'+(This.ImageY)+'deg) '+
      'rotate('+This.ImageR+'deg) ');
    gong.style.setProperty('opacity',This.ImageO / 100);
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

  // Update UI element - Audio
  Gongs[GongID].ElementHandle.setAttribute('audiotime', FloatToStr(OptionsAudioTime));
  Gongs[GongID].ElementHandle.setAttribute('audiogain', IntToStr(OptionsAudioGain));
  Gongs[GongID].ElementHandle.setAttribute('audiostart', IntToStr(OptionsAudioStart));
  Gongs[GongID].ElementHandle.setAttribute('audioend', IntToStr(OptionsAudioEnd));
  if OptionsAudioStyle = 4 then
  begin
    Gongs[GongID].ElementHandle.setAttribute('audiosets',Sets);
    if OptionsAudioSetStyle = 0
    then Gongs[GongID].ElementHandle.setAttribute('audiosetstyle','series')
    else Gongs[GongID].ElementHandle.setAttribute('audiosetstyle','parallel');
  end
  else
  begin
    Gongs[GongID].ElementHandle.removeAttribute('audiosets');
    Gongs[GongID].ElementHandle.removeAttribute('audiosetstyle');
  end;

  OptionsDiscardGong := False;
  btnOptionsCancelClick(Sender);

  // Update page caption
  Caption := AppProject + ' v'+AppVersion + ' - ' + Trim(editTitle.Text);

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

procedure TForm1.btnAudioResetClick(Sender: TObject);
begin
  OptionsAudioGain := 100;
  OptionsAudioStart := 0;
  OptionsAudioEnd := 0;
  UpdateAudioParams;
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

  if (CursorPosition <> -1) and (Ref <> -1) then
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

      Gongs[GongID].ElementHandle.classList.Add('Gong','d-flex','justify-content-center','align-items-center','dragswap','text-white');

      Gongs[GongID].ElementHandle.style.cssText := Gongs[Ref].ElementHandle.style.cssText;
      Gongs[GongID].HTML.Text := Gongs[Ref].HTML.Text;

      // Update UI element - Image
      asm
        var gong = document.getElementById('Gong-'+this.GongID).firstElementChild;
        var refg = document.getElementById('Gong-'+Ref).firstElementChild;
        gong.style.cssText = refg.style.cssText;
      end;

//      Gongs[GongID].HTML.Text := '<div class="text-white">'+IntToStr(GongID)+'</div>';

      document.getElementById('BG-'+IntToStr(i)).appendChild(Gongs[GongID].ElementHandle);
      (document.getElementById('BG-'+IntToStr(i)) as TJSHTMLElement).style.setProperty('animation-name','jiggle');

      // Set default values for new HexaGong
      asm
        this.GongData['HexaGongs'].push({});
        this.GongData['HexaGongs'][this.GongID] = JSON.parse(JSON.stringify(this.GongData['HexaGongs'][Ref]));
        this.GongData['HexaGongs'][this.GongID]['Name'] = 'Clone of '+this.GongData['HexaGongs'][Ref]['Name'];
      end;

      // Copy audio information
      asm
        this.GongAudio[this.GongID] = this.GongAudio[Ref];
        var gongfrom = document.getElementById('Gong-'+Ref);
        var gongto =  document.getElementById('Gong-'+this.GongID);
        gongto.setAttribute('audiotime',gongfrom.getAttribute('audiotime'));
        gongto.setAttribute('audiogain',gongfrom.getAttribute('audiogain'));
        gongto.setAttribute('audiostart',gongfrom.getAttribute('audiostart'));
        gongto.setAttribute('audioend',gongfrom.getAttribute('audioend'));
        if (gongfrom.getAttribute('audiosets') !== null) {
          gongto.setAttribute('audiosets',gongfrom.getAttribute('audiosets'));
          gongto.setAttribute('audiosetstyle',gongfrom.getAttribute('audiosetstyle'));
        }
      end;

    end;
  end;
end;

procedure TForm1.btnDownloadClick(Sender: TObject);
var
  FileData: String;
  FileName: String;
  FileTime: String;
begin
  FileTime := FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz',Now);
  FileData := '';
  FileName := '';
   
  asm
    function arrayBufferToBase64( buffer ) {
      var binary = '';
      var bytes = new Uint8Array( buffer );
      var len = bytes.byteLength;
      for (var i = 0; i < len; i++) {
          binary += String.fromCharCode( bytes[ i ] );
      }
      return window.btoa( binary );
    }

    var AudioStrings = [];
    for (var i = 0; i < this.GongAudio.length; i++) {
      if ((this.GongAudio[i] !== null) && (this.GongAudio[i] !== undefined)) {
        var encoder = new aas.Encoder();
        var audiostring = arrayBufferToBase64(encoder.execute(this.GongAudio[i]));
        AudioStrings.push(audiostring);
      }
      else {
        AudioStrings.push(null);
      }
    }
    FileData = JSON.stringify({
      "AppProject":       this.AppProject,
      "AppVersion":       this.AppVersion,
      "AooRelease":       this.AppRelease,
      "SaveTimestamp":    FileTime,
      "SaveFormat":       "JSON",
      "ZoomLevel":        this.ZoomLevel,
      "AnimatedElements": this.AnimatedElements,
      "GongData":         JSON.stringify(this.GongData),
      "PositionsR":       JSON.stringify(this.PositionsR),
      "PositionsC":       JSON.stringify(this.PositionsC),
      "PositionsG":       JSON.stringify(this.PositionsG),
      "GongsP":           JSON.stringify(this.GongsP),
      "Audio":            JSON.stringify(AudioStrings)
    });
    FileName = this.GongData['HexaGongs Project Title']+'.hexagongs';
    var blob = new Blob([FileData], {type: "applications/json;charset=utf-8"});
    saveAs(blob, FileName);
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

procedure TForm1.btnVolumeDownClick(Sender: TObject);
begin
  MasterVolume := Max(0,Min(MasterVolume - 0.1, 1.0));
  asm
    btnVolumeDown.innerHTML = '<div style="pointer-events: none; color: white !important; font-family: Cairo;">'+parseInt(this.MasterVolume * 100.0)+'</div>';
    this.AudioGain.gain.value = this.MasterVolume;
    setTimeout(function() {
      btnVolumeDown.innerHTML = '<i class="fa-solid fa-volume-low text-white pe-none"></i>';
    },500);
  end;
end;

procedure TForm1.btnVolumeMuteClick(Sender: TObject);
begin
  if MasterVolume = 0 then
  begin
    MasterVolume := MuteVolume;
  end
  else
  begin
    MuteVOlume := MasterVolume;
    MasterVolume := 0;
  end;

  asm
    btnVolumeMute.innerHTML = '<div style="pointer-events: none; color: white !important; font-family: Cairo;">'+parseInt(this.MasterVolume * 100.0)+'</div>';
    this.AudioGain.gain.value = this.MasterVolume;
    setTimeout(function() {
      btnVolumeMute.innerHTML = '<i class="fa-solid fa-volume-xmark text-white pe-none"></i>';
    },500);
  end;
end;

procedure TForm1.btnVolumeUpClick(Sender: TObject);
begin
  MasterVolume := Max(0,Min(MasterVolume + 0.1, 1.0));
  asm
    btnVolumeUp.innerHTML = '<div style="pointer-events: none; color: white !important; font-family: Cairo;">'+parseInt(this.MasterVolume * 100.0)+'</div>';
    this.AudioGain.gain.value = this.MasterVolume;
    setTimeout(function() {
      btnVolumeUp.innerHTML = '<i class="fa-solid fa-volume-high text-white pe-none"></i>';
    },500);
  end;
end;

procedure TForm1.btnScaleMinusClick(Sender: TObject);
var
  i: Integer;
  j: integer;
  r: integer;
  c: integer;
begin

  if Zoomlevel >= 7 then
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

  if (CursorPosition <> -1) and (Ref <> -1) then
  begin
    Gongs[Ref].HTML.Text := '';
    Gongs[Ref] := nil;
    GongsP[Ref] := -1;
    PositionsG[CursorPosition] := -1;
    asm
      this.GongAudio[Ref] = null;
      this.GongData.HexaGongs[Ref]['Deleted'] = true;
      document.getElementById('Gong-'+Ref).remove();
    end;
  end;
end;

procedure TForm1.btnUploadClick(Sender: TObject);
var
  i: Integer;
begin
  WebOpenDialog1.Accept := '.hexagongs';
  await(string, WebOpenDialog1.Perform);
  // If files were selected, iterate through them
  i := 0;
  while (i < WebOpenDialog1.Files.Count) do
  begin
    WebOpenDialog1.Files.Items[i].GetFileAsText;
    i := i + 1;
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

procedure TForm1.divAudioClipClick(Sender: TObject);
begin
  OptionsAudioStyle := 0;
  labelAudioClip.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelAudioURL.ElementHandle.style.setProperty('background','black');
  labelAudioUpload.ElementHandle.style.setProperty('background','black');
  labelAudioRecord.ElementHandle.style.setProperty('background','black');
  labelAudioSet.ElementHandle.style.setProperty('background','black');

  editAudioSource.ReadOnly := True;
  editAudioSource.ElementHandle.style.setProperty('background','radial-gradient(#00000000,#202020)');
  editAudioSource.ElementHandle.style.setProperty('cursor','pointer');
  divAudioSource.ElementHandle.classList.replace('WhiteR','GrayR');

  divAudioSource.Visible := True;
  divAudioAdjustments.Visible := True;
  divAudioSets.Visible := False;

  UpdateAudioParams;
end;

procedure TForm1.divAudioRecordClick(Sender: TObject);
begin
  OptionsAudioStyle := 3;
  labelAudioRecord.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelAudioURL.ElementHandle.style.setProperty('background','black');
  labelAudioUpload.ElementHandle.style.setProperty('background','black');
  labelAudioClip.ElementHandle.style.setProperty('background','black');
  labelAudioSet.ElementHandle.style.setProperty('background','black');

  editAudioSource.ReadOnly := True;
  editAudioSource.ElementHandle.style.setProperty('background','radial-gradient(#00000000,#202020)');
  editAudioSource.ElementHandle.style.setProperty('cursor','pointer');
  divAudioSource.ElementHandle.classList.replace('WhiteR','GrayR');

  divAudioSource.Visible := True;
  divAudioAdjustments.Visible := True;
  divAudioSets.Visible := False;

  UpdateAudioParams;
end;

procedure TForm1.divAudioRecordStartClick(Sender: TObject);
begin
  WebMediaCapture1.Start;
  divAudioRecordStop.Visible := True;
  divAudioRecordStart.Visible := False;
end;

procedure TForm1.divAudioRecordStopClick(Sender: TObject);
begin
  WebMediaCapture1.Stop;
  divAudioRecordStop.Visible := False;
  divAudioRecordStart.Visible := True;
end;

procedure TForm1.divAudioSetClick(Sender: TObject);
begin
  OptionsAudioStyle := 4;
  labelAudioSet.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelAudioURL.ElementHandle.style.setProperty('background','black');
  labelAudioUpload.ElementHandle.style.setProperty('background','black');
  labelAudioRecord.ElementHandle.style.setProperty('background','black');
  labelAudioClip.ElementHandle.style.setProperty('background','black');

  editAudioSource.ReadOnly := True;
  editAudioSource.ElementHandle.style.setProperty('background','radial-gradient(#00000000,#202020)');
  editAudioSource.ElementHandle.style.setProperty('cursor','pointer');
  divAudioSource.ElementHandle.classList.replace('WhiteR','GrayR');

  divAudioSource.Visible := False;
  divAudioAdjustments.Visible := False;
  divAudioSets.Visible := True;
  divAudioClips.Visible := False;
  divAudioRecording.Visible := False;
end;

procedure TForm1.divAudioUploadClick(Sender: TObject);
begin
  OptionsAudioStyle := 2;
  labelAudioUpload.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelAudioURL.ElementHandle.style.setProperty('background','black');
  labelAudioClip.ElementHandle.style.setProperty('background','black');
  labelAudioRecord.ElementHandle.style.setProperty('background','black');
  labelAudioSet.ElementHandle.style.setProperty('background','black');

  editAudioSource.ReadOnly := True;
  editAudioSource.ElementHandle.style.setProperty('background','radial-gradient(#00000000,#202020)');
  editAudioSource.ElementHandle.style.setProperty('cursor','pointer');
  divAudioSource.ElementHandle.classList.replace('WhiteR','GrayR');

  divAudioSource.Visible := True;
  divAudioAdjustments.Visible := True;
  divAudioSets.Visible := False;

  UpdateAudioParams;
end;

procedure TForm1.divAudioURLClick(Sender: TObject);
begin
  OptionsAudioStyle := 1;
  labelAudioURL.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelAudioClip.ElementHandle.style.setProperty('background','black');
  labelAudioUpload.ElementHandle.style.setProperty('background','black');
  labelAudioRecord.ElementHandle.style.setProperty('background','black');
  labelAudioSet.ElementHandle.style.setProperty('background','black');

  editAudioSource.ReadOnly := False;
  editAudioSource.ElementHandle.style.setProperty('background','black)');
  editAudioSource.ElementHandle.style.setProperty('cursor','unset');
  divAudioSource.ElementHandle.classList.replace('GrayR','WhiteR');

  divAudioSource.Visible := True;
  divAudioAdjustments.Visible := True;
  divAudioSets.Visible := False;

  UpdateAudioParams;
end;

procedure TForm1.divAudioWaveformHolderClick(Sender: TObject);
begin
  // Play the waveform
  asm
    var This = pas.Unit1.Form1;
    var audio = this.GongAudio[This.GongID];

    if (audio == undefined) {
      return;
    }

    function StopPreview() {
      divAudioWaveform.classList.remove('Playback');
      if (divAudioWaveform.lastElementChild.classList.contains('progress')) {
        divAudioWaveform.lastElementChild.remove();
      }
      clearInterval(This.AudioPreviewProgress)
      clearTimeout(This.AudioPreviewTimer);
      This.AudioPreview.disconnect();
      This.AudioPreview.stop();
      This.AudioPreview = null;
    }

    // If currently playing, stop
    if (divAudioWaveform.classList.contains('Playback')) {
      StopPreview();
    }

    // If not playing, start
    else {
      divAudioWaveform.classList.add('Playback');

      var ClipGain = new GainNode(This.AudioCtx);
      ClipGain.gain.value = This.OptionsAudioGain / 100;
      This.AudioPreview = This.AudioCtx.createBufferSource();
      This.AudioPreview.buffer = This.GongAudio[This.GongID];
      This.AudioPreview.connect(ClipGain).connect(This.AudioGain).connect(This.AudioCtx.destination);

      var offset = (This.OptionsAudioStart / 100) * This.AudioPreview.buffer.duration;
      var playlength = ((100 - (This.OptionsAudioStart + This.OptionsAudioEnd)) / 100) * This.AudioPreview.buffer.duration;

//      console.log(This.OptionsAudioGain / 100);
//      console.log(This.OptionsAudioStart);
//      console.log(This.OptionsAudioEnd);
//      console.log(This.AudioPreview.buffer.duration);
//      console.log(offset);
//      console.log(playlength);

      This.AudioPreview.start(0, offset, playlength);
      divAudioWaveform.setAttribute('starttime',This.AudioCtx.currentTime);

      // Update progress display
      var progress = '<div class="progress" style="position:absolute; top:0px; left:0px; width:100%; height:100%; z-index:100; background:none; pointer-events:none;"><div>';
      divAudioWaveform.innerHTML += progress;
      This.AudioPreviewProgress = setInterval(function() {
        if (This.AudioPreview !== null) {
          var elapsed = Math.min(1, (This.AudioCtx.currentTime - divAudioWaveform.getAttribute('starttime')) / playlength);
          if (elapsed >= 1) {
            StopPreview();
          }
          else {
            var bar = 12 +
                     ((This.OptionsAudioStart / 100)) * (divAudioWaveform.getBoundingClientRect().width - 20) +
                      elapsed * ((divAudioWaveform.getBoundingClientRect().width - 20) * playlength / This.AudioPreview.buffer.duration);
            divAudioWaveform.lastElementChild.style.setProperty('background','linear-gradient(to right, transparent 0px, transparent '+(bar - 4)+'px, #FFFFFF60 '+(bar - 4)+'px, #FFFFFF60 '+bar+'px, transparent '+bar+'px, transparent 100%)');
          }
        }
      },100);

      // Stop when we're done playing
      This.AudioPreviewTimer = setTimeout(function() {
        StopPreview();
      }, playlength * 1000);

    }
  end;
end;

procedure TForm1.divImageSourceIconClick(Sender: TObject);
begin
  OptionsImageStyle := 0;
  labelImageSourceIcon.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelImageSourceURL.ElementHandle.style.setProperty('background','black');
  labelImageSourceUpload.ElementHandle.style.setProperty('background','black');

  editImageSource.ReadOnly := True;
  editImageSource.ElementHandle.style.setProperty('background','radial-gradient(#00000000,#202020)');
  editImageSource.ElementHandle.style.setProperty('cursor','pointer');
  divImageSource.ElementHandle.classList.replace('WhiteR','GrayR');

  divIconPicker.Visible := False;
  editImageSource.Text := Copy(OptionsImageIcon, pos(':', OptionsImageIcon)+1,length(OptionsImageIcon));
  divImage.HTML.Text := ImageData;
  asm
    divResultsInner.replaceChildren();
  end;

end;

procedure TForm1.divImageSourceUploadClick(Sender: TObject);
begin
  OptionsImageStyle := 2;
  labelImageSourceUpload.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelImageSourceURL.ElementHandle.style.setProperty('background','black');
  labelImageSourceIcon.ElementHandle.style.setProperty('background','black');

  editImageSource.ReadOnly := True;
  editImageSource.ElementHandle.style.setProperty('background','radial-gradient(#00000000,#202020)');
  editImageSource.ElementHandle.style.setProperty('cursor','pointer');
  divImageSource.ElementHandle.classList.replace('WhiteR','GrayR');

  divIconPicker.Visible := False;
  editImageSource.Text := OptionsImageFile;
  asm
    divResultsInner.replaceChildren();
  end;

end;

procedure TForm1.divImageSourceURLClick(Sender: TObject);
begin
  OptionsImageStyle := 1;
  labelImageSourceURL.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelImageSourceIcon.ElementHandle.style.setProperty('background','black');
  labelImageSourceUpload.ElementHandle.style.setProperty('background','black');

  editImageSource.ReadOnly := False;
  editImageSource.ElementHandle.style.setProperty('background','black');
  editImageSource.ElementHandle.style.removeProperty('cursor');
  divImageSource.ElementHandle.classList.replace('GrayR','WhiteR');

  divIconPicker.Visible := False;
  editImageSource.Text := OptionsImageURL;
  asm
    divResultsInner.replaceChildren();
  end;

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

procedure TForm1.divParallelClick(Sender: TObject);
begin
  labelParallel.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelSeries.ElementHandle.style.setProperty('background','black');
  OptionsAudioSetStyle := 1;
end;

procedure TForm1.divProxyCustomClick(Sender: TObject);
begin
  OptionsProxyStyle := 2;
  divProxy.Visible := True;
  labelProxyDefault.ElementHandle.style.setProperty('background','black');
  labelProxyNone.ElementHandle.style.setProperty('background','black');
  labelProxyCustom.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
end;

procedure TForm1.divProxyDefaultClick(Sender: TObject);
begin
  OptionsProxyStyle := 0;
  divProxy.Visible := False;
  labelProxyDefault.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelProxyNone.ElementHandle.style.setProperty('background','black');
  labelProxyCustom.ElementHandle.style.setProperty('background','black');
end;

procedure TForm1.divProxyNoneClick(Sender: TObject);
begin
  OptionsProxyStyle := 1;
  divProxy.Visible := False;
  labelProxyDefault.ElementHandle.style.setProperty('background','black');
  labelProxyNone.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelProxyCustom.ElementHandle.style.setProperty('background','black');
end;

procedure TForm1.divSeriesClick(Sender: TObject);
begin
  labelSeries.ElementHandle.style.setProperty('background','radial-gradient(#00000000,white)');
  labelParallel.ElementHandle.style.setProperty('background','black');
  OptionsAudioSetStyle := 0;
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
  while I < min(Length(Gongs), Length(GongsP)) do
  begin
    if GongsP[I] <> -1 then
    begin
      if Gongs[I] <> nil  then
      begin
        Gongs[I].ElementHandle.style.setProperty('font-size',IntToStr(Trunc(HexRadius))+'px');
        Gongs[I].ElementHandle.style.setProperty('width',FloatToStrF(HexRadius * 2,ffGeneral,10,5)+'px');
        Gongs[I].ElementHandle.style.setProperty('height',FloatToStrF(HexRadius * 2,ffGeneral,10,5)+'px');
        document.GetElementById('BG-'+IntToStr(GongsP[I])).appendChild(Gongs[I].ElementHandle);
      end;
    end;
    I := I + 1;
  end;

end;

procedure TForm1.editAudioSourceChange(Sender: TObject);
begin
  OptionsAudioFile := editAudioSource.Text;
  asm
    var This = pas.Unit1.Form1;

    var Proxy = '';
    if (This.OptionsProxyStyle == 0) {
      Proxy = This.Server_URL+'/HexaGongsService/GetRemoteData?RemoteURL=';
    }
    else if (This.OptionsProxyStyle == 2) {
      Proxy = This.OptionsProxy;
    }

    var response = await fetch(Proxy+This.OptionsAudioFile);
    var audiodata = await response.arrayBuffer();
    This.GongAudio[This.GongID] = This.AudioCtx.createBufferSource();
    This.AudioCtx.decodeAudioData(
      audiodata,
      (buffer) => {
        This.GongAudio[This.GongID] = buffer;
        This.OptionsAudioTime = buffer.duration;
        This.UpdateWaveform();
        labelAudioAdjustments.firstElementChild.textContent = 'Adjustments [ '+buffer.duration.toFixed(1)+'s ]';
      }
    );
  end;
end;

procedure TForm1.editAudioSourceClick(Sender: TObject);
var
  i: Integer;
begin

  // Toggle Audio Clips
  if OptionsAudioStyle = 0 then
  begin
    divAudioClips.Visible := not(divAudioClips.Visible);
    divAudioRecording.Visible := False;
  end

  // URL
  else if OptionsAudioStyle = 1  then
  begin
    // Don't really have to do anything in this case
    // This is handled by the onChange event of editAudioSource
    divAudioRecording.Visible := False;
    divAudioClips.Visible := False;
  end

  // Upload
  else if OptionsAudioStyle = 2 then
  begin
    divAudioRecording.Visible := False;
    divAudioClips.Visible := False;

    // Seems audio/* on its own is insufficient - iPad won't allow access to WAV for example?
    WebOpenDialog1.Accept := '.mp3,.wav,.ogg,.acc,audio/*';
    await(string, WebOpenDialog1.Perform);
    // If files were selected, iterate through them
    i := 0;
    while (i < WebOpenDialog1.Files.Count) do
    begin
      WebOpenDialog1.Files.Items[i].GetFileAsArrayBuffer;
      i := i + 1;
    end;
  end

  // Record
  else if OptionsAudioStyle = 3 then
  begin
    divAudioRecording.Visible := not(divAudioRecording.Visible);
    divAudioClips.Visible := False;
  end

  // Sets
  else if OptionsAudioStyle = 4 then
  begin
    // Don't have to do anything as the table is already showing.
  end;
end;

procedure TForm1.editImageSourceChange(Sender: TObject);
begin
  // Set Form variables
  ImageData := '<img width="70%" src="'+editImageSource.Text+'">';
  OptionsImageFile := editImageSource.Text;

  // Update interface
  divImage.HTML.Text := ImageData;
end;

procedure TForm1.editImageSourceClick(Sender: TObject);
var
  i: Integer;
begin

  // Icon
  if OptionsIMageStyle = 0 then
  begin
    // Toggle Icon Picker
    divIconPicker.Visible := not(divIconPicker.Visible);

    if divIconPicker.Visible  then
    begin
      editIconSearch.Text := editImageSource.Text;
      btnIconSearchClick(Sender);
    end
    else
    begin
      asm
        divResultsInner.replaceChildren();
      end;
    end;
  end

  // URL
  else if OptionsImageStyle = 1  then
  begin
    // Don't really have to do anything in this case
    // This is handled by the OnChange event of editImageSource
  end

  // Upload
  else if OptionsImageStyle = 2 then
  begin
    WebOpenDialog1.Accept := 'image/*';
    await(string, WebOpenDialog1.Perform);
    // If files were selected, iterate through them
    i := 0;
    while (i < WebOpenDialog1.Files.Count) do
    begin
      WebOpenDialog1.Files.Items[i].GetFileAsBase64;
      i := i + 1;
    end;
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


procedure TForm1.InitializeXData;
var
  i: Integer;
  c: Integer;
begin
  // This intializes the custom icon editor to use the "remote" approach.
  asm
    this.IconSets = [];
    this.IconSetNames = [];
    this.IconSetCount = [];

    // Load up our Local icon sets
    var response = await fetch(this.Server_URL+'/HexaGongsService/AvailableIconSets');
    this.IconSetList = await response.json()

    // Original list is soprted by filename.  Lets sort it by library name instead (case-insensitive)
    this.IconSetList = this.IconSetList.sort((a, b) => {
      if (a.name.toLowerCase() < b.name.toLowerCase()) {
        return -1;
      }
    });

    // Get count data from this list
    for (var i = 0; i < this.IconSetList.length; i++) {
      var iconcount = this.IconSetList[i].count
      this.IconSetNames.push(this.IconSetList[i].name+': '+iconcount+' icons');
      this.IconSetCount.push(iconcount);
    };
  end;

  // Populate the listLibraries control
  c := 0;
  for i := 0 to Length(IconsetNames)-1 do
  begin
    c := c + IconSetCount[i];
  end;
  labelIconSearch.Caption := 'Icon Search: '+FloatToStrF(c,ffNumber,5,0)+' icons available';


  // Retrieve list of available Audio clips
  asm
    var response = await fetch(this.Server_URL+'/HexaGongsService/AvailableAudioClips');
    var AudioClips = await response.json();
    this.tabAudioClips.setData(AudioClips);
  end;

end;

procedure TForm1.PlayAudioClip(AudioClip: String; AudioProgress: TJSHTMLElement);
begin
  if AudioProgress.classList.contains('Playing') then
  begin
    AudioProgress.classList.remove('Playing');
    asm
      var This = pas.Unit1.Form1;
      for (var i = 0; i < This.AudioClipsPlaying.length; i++) {
        if (This.AudioClipsPlaying[i].AudioClip == AudioClip) {
          AudioProgress.firstElementChild.innerHTML = '<i class="fa-solid fa-play fa-xl"></i>';
          This.AudioClipsPlaying[i].Player.pause();
          This.AudioClipsPlaying[i].Player.currentTime = 0;
          This.AudioClipsPlaying[i].Player.srcObj = null;
          const indexToRemove = This.AudioClipsPlaying.findIndex((clip) => clip.AudioClip == AudioClip);
          This.AudioClipsPlaying.splice(indexToRemove, 1);
        }
      }
    end;
  end
  else
  begin
    AudioProgress.classList.add('Playing');
    asm
      var This = pas.Unit1.Form1;
      var playthis = new Audio(This.Server_URL+'/HexaGongsService/GetAudioClip?AudioClip='+encodeURIComponent(AudioClip));
      playthis.addEventListener('ended', function (e) {
        AudioProgress.classList.remove('Playing');
        AudioProgress.firstElementChild.style.setProperty('background','violet');
        AudioProgress.firstElementChild.innerHTML = '<i class="fa-solid fa-play fa-xl"></i>';
        const indexToRemove = This.AudioClipsPlaying.findIndex((clip) => clip.AudioClip == AudioClip);
        This.AudioClipsPlaying.splice(indexToRemove, 1);
      });
      playthis.addEventListener('timeupdate', function (e) {
        var progress = Math.max(5,parseInt(playthis.currentTime / playthis.duration * 360));
        if (playthis.currentTime == 0) {
          AudioProgress.firstElementChild.style.setProperty('background','violet');
        } else {
          AudioProgress.firstElementChild.style.setProperty('background','conic-gradient(purple 0deg '+progress+'deg, violet '+progress+'deg)');
        }
      });
      AudioProgress.firstElementChild.innerHTML = '<i class="fa-solid fa-square"></i>';
      AudioProgress.firstElementChild.style.setProperty('background','conic-gradient(purple 0deg 5deg, violet 1deg)');
      This.AudioClipsPlaying.push({'AudioClip':AudioClip, 'Player':playthis, 'Element':AudioProgress });
      playthis.play();
    end;
  end;
end;

procedure TForm1.SelectAudioClip(AudioClipName: String; AudioClip: String);
begin
  divAudioClips.Visible := False;
  OptionsAudioFile := AudioClipName;
  asm
    var This = pas.Unit1.Form1;
    var response = await fetch(This.Server_URL+'/HexaGongsService/GetAudioClip?AudioClip='+encodeURIComponent(AudioClip));
    var audiodata = await response.arrayBuffer();
    This.GongAudio[This.GongID] = This.AudioCtx.createBufferSource();
    This.AudioCtx.decodeAudioData(
      audiodata,
      (buffer) => {
        This.GongAudio[This.GongID] = buffer;
        This.OptionsAudioTime = buffer.duration;
        editAudioSource.value = This.OptionsAudioFile;
        This.UpdateWaveform();
        labelAudioAdjustments.firstElementChild.textContent = 'Adjustments [ '+buffer.duration.toFixed(1)+'s ]';
      }
    );
  end;
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