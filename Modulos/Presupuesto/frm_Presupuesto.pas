unit frm_Presupuesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls, ExcelXP, Excel2000,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, RxDBComb, unitMetodos,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, udbgrid,UnitExcepciones,
  dblookup, unittbotonespermisos, UnitValidaTexto, unitactivapop, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, cxCalc, unitGenerales, masUtilerias,
  cxCurrencyEdit, cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtons, cxGroupBox, cxCalendar, cxSpinEdit, cxProgressBar, cxLabel,
  dxLayoutControlAdapters, cxSplitter, OleServer;

type
  TfrmProgramasTrabajo = class(TForm)
    frmBarra1: TfrmBarra;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    ds_actividades: TDataSource;
    Actividades: TZQuery;
    cxViewPrograma: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_programa: TcxGrid;
    cxViewProgramaColumn1: TcxGridDBColumn;
    cxViewProgramaColumn2: TcxGridDBColumn;
    cxViewProgramaColumn3: TcxGridDBColumn;
    cxViewProgramaColumn4: TcxGridDBColumn;
    cxViewProgramaColumn7: TcxGridDBColumn;
    cxViewProgramaColumn8: TcxGridDBColumn;
    cxViewProgramaColumn9: TcxGridDBColumn;
    ds_folios: TDataSource;
    Folios: TZQuery;
    Medidas: TZReadOnlyQuery;
    ds_medidas: TDataSource;
    cxViewProgramaColumn5: TcxGridDBColumn;
    cxViewProgramaColumn6: TcxGridDBColumn;
    ActividadessContrato: TStringField;
    ActividadessIdConvenio: TStringField;
    ActividadessNumeroOrden: TStringField;
    ActividadesiNivel: TIntegerField;
    ActividadessSimbolo: TStringField;
    ActividadessWbs: TStringField;
    ActividadessWbsContrato: TStringField;
    ActividadessWbsAnterior: TStringField;
    ActividadessPaquete: TStringField;
    ActividadessNumeroActividad: TStringField;
    ActividadessTipoActividad: TStringField;
    ActividadessActividadAnterior: TStringField;
    ActividadessTipoAnexo: TStringField;
    ActividadesiItemOrden: TStringField;
    ActividadesmDescripcion: TMemoField;
    ActividadesdFechaInicio: TDateTimeField;
    ActividadessHoraInicio: TStringField;
    ActividadesdDuracion: TFloatField;
    ActividadesdFechaFinal: TDateTimeField;
    ActividadessHoraFinal: TStringField;
    ActividadesdPonderado: TFloatField;
    ActividadessMedida: TStringField;
    ActividadesdCantidad: TFloatField;
    ActividadesdCargado: TFloatField;
    ActividadesdInstalado: TFloatField;
    ActividadesdExcedente: TFloatField;
    ActividadesdCostoMN: TFloatField;
    ActividadesdCostoDLL: TFloatField;
    ActividadesdVentaMN: TFloatField;
    ActividadesdVentaDLL: TFloatField;
    ActividadessIdPlataforma: TStringField;
    ActividadessIdPernocta: TStringField;
    ActividadesmComentarios: TMemoField;
    ActividadeslGerencial: TStringField;
    ActividadeslCalculo: TStringField;
    ActividadesiColor: TIntegerField;
    ActividadeslGenerado: TStringField;
    ActividadeslCancelada: TStringField;
    ActividadesiConsecutivo: TIntegerField;
    ActividadeslExtraordinario: TStringField;
    ActividadessIdFase: TStringField;
    ActividadessAnexo: TStringField;
    ActividadessWbsPU: TStringField;
    ActividadesdDiferenciaDuracion: TStringField;
    ActividadeslFactorBarco: TStringField;
    ActividadessDuracionHoras: TStringField;
    ActividadeslAfectaSuspension: TStringField;
    ActividadesOrden: TIntegerField;
    FoliossContrato: TStringField;
    FoliossIdFolio: TStringField;
    FoliossNumeroOrden: TStringField;
    FoliossOficioAutorizacion: TStringField;
    FoliosmDescripcion: TMemoField;
    FoliossIdPlataforma: TStringField;
    FoliossIdPernocta: TStringField;
    FoliossIdPlataforma_nota: TStringField;
    FoliosdFiProgramado: TDateField;
    FoliosdFfProgramado: TDateField;
    FolioscIdStatus: TStringField;
    FoliosmComentarios: TMemoField;
    FoliossFormato: TStringField;
    FoliosiConsecutivo: TIntegerField;
    FoliosiConsecutivoTierra: TIntegerField;
    FoliosiJornadas: TIntegerField;
    FoliosiOrden: TIntegerField;
    FoliossCsu: TStringField;
    FoliossUbicacion: TStringField;
    FolioslAplicaJornada: TStringField;
    FoliossIdConvenio: TStringField;
    cxViewProgramaColumn10: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    cxViewProgramaColumn11: TcxGridDBColumn;
    ActividadesAvance: TFloatField;
    ActividadesAvancePartida: TFloatField;
    ActividadesdAvanceAcumulado: TFloatField;
    panelButton: TPanel;
    panelDatos: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    cxCantidad: TcxDBCalcEdit;
    cxFolio: TcxDBLookupComboBox;
    cxActividad: TcxDBTextEdit;
    cxMedida: TcxDBLookupComboBox;
    cxNivel: TcxDBSpinEdit;
    cxClasificacion: TcxDBComboBox;
    cxFechaInicio: TcxDBDateEdit;
    cxFechaTermino: TcxDBDateEdit;
    labelProceso: TcxLabel;
    progreso: TcxProgressBar;
    cxAccesoFolio: TcxButton;
    cxPonderado: TcxDBCalcEdit;
    cxDescripcion: TcxDBMemo;
    cxGroupBox1: TcxGroupBox;
    cxOrdenaZA: TcxButton;
    cxOrdenaAZ: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    panelImportar: TPanel;
    cxSplitDatos: TcxSplitter;
    cxOpiconImportar: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    OpenXLS: TOpenDialog;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxCSU: TcxTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxAbrir: TcxButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxImportar: TcxButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutAutoCreatedGroup;
    cxCancelar: TcxButton;
    dxLayoutControl2Item6: TdxLayoutItem;
    cxArchivo: TcxTextEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    Plataforma: TZReadOnlyQuery;
    ds_plataforma: TDataSource;
    Pernocta: TZReadOnlyQuery;
    ds_pernocta: TDataSource;
    cxAccesoPlataforma: TcxButton;
    dxLayoutControl2Item8: TdxLayoutItem;
    cxAccesoPernocta: TcxButton;
    dxLayoutControl2Item9: TdxLayoutItem;
    cxPernocta: TcxDBLookupComboBox;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Group3: TdxLayoutAutoCreatedGroup;
    cxPlataforma: TcxDBLookupComboBox;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutAutoCreatedGroup;
    ExcelWorksheet1: TExcelWorksheet;
    ExcelApplication1: TExcelApplication;
    ExcelWorkbook1: TExcelWorkbook;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_pernoctanCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxViewProgramaDblClick(Sender: TObject);
    procedure cxAccesoFolioClick(Sender: TObject);
    procedure ActividadesAfterScroll(DataSet: TDataSet);

    procedure UltimaFecha;
    function  ChecaNivel : boolean;

    procedure cxFechaTerminoPropertiesEditValueChanged(Sender: TObject);
    procedure cxFechaInicioPropertiesChange(Sender: TObject);
    procedure cxNivelPropertiesChange(Sender: TObject);
    procedure cxOrdenaAZClick(Sender: TObject);
    procedure cxOrdenaZAClick(Sender: TObject);
    procedure ActividadesCalcFields(DataSet: TDataSet);
    procedure cxViewProgramaStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxOpiconImportarClick(Sender: TObject);
    procedure cxCancelarClick(Sender: TObject);
    procedure cxAccesoPlataformaClick(Sender: TObject);
    procedure cxAccesoPernoctaClick(Sender: TObject);
    procedure cxPlataformaPropertiesChange(Sender: TObject);
    procedure cxAbrirClick(Sender: TObject);
    procedure cxImportarClick(Sender: TObject);

    function ValidaFormato :boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProgramasTrabajo: TfrmProgramasTrabajo;
  botonpermiso:tbotonespermisos;
  sOpcion : string;
  sFolioAnt, sWbsAnt, sActividadAnt : string;

  Excel, Libro, Hoja: Variant;
  columnas : array[1..260] of String ;
  flcid : integer;
  CodigoColor  : array[1..4] of string;

implementation

uses
   frm_noil, frm_OrdenesCtrlObra, frm_bitacoradepartamental_2, frm_Pernoctan,
  frm_plataformas;
{$R *.dfm}

procedure TfrmProgramasTrabajo.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmProgramasTrabajo.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;
    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

     if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_EntradaERP;
end;

procedure TfrmProgramasTrabajo.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

     if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmProgramasTrabajo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  actividades.Cancel ;
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmProgramasTrabajo.FormShow(Sender: TObject);
begin
  labelproceso.Visible := False;
  progreso.Visible     := False;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cPernoctan', PopupPrincipal);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;

  actividades.Active := False ;
  actividades.ParamByName('Contrato').AsString := global_contrato;
  actividades.ParamByName('Fecha').AsDate      := date;
  actividades.Open ;

  folios.Active := False ;
  folios.ParamByName('Contrato').AsString := global_contrato;
  folios.Open ;

  Medidas.Active := False ;
  Medidas.Open ;

  plataforma.Active := False ;
  plataforma.Open ;

  pernocta.Active := False ;
  pernocta.Open ;

  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;

end;

procedure TfrmProgramasTrabajo.grid_pernoctanCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmProgramasTrabajo.frmBarra1btnAddClick(Sender: TObject);
begin
    frmBarra1.btnAddClick(Sender);
    cxNivel.Enabled := True;
    cxClasificacion.Enabled := True;
    cxMedida.Enabled := True;
    folios.Locate('sIdFolio',cxFolio.Text,[]);

    folios.Filtered := False;
    folios.Filter   := 'sNumeroOrden =' +quotedStr(cxFolio.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString);
    folios.Filtered := True;

    cxActividad.SetFocus ;
    actividades.Append ;
    cxFolio.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString := folios.FieldByName('sNumeroOrden').AsString;
    cxNivel.Value := 1;
    cxClasificacion.ItemIndex := 1;

    actividades.FieldByName('sContrato').AsString    := global_contrato;
    actividades.FieldByName('sIdConvenio').AsString  := global_convenio;
    actividades.FieldByName('sNumeroOrden').AsString := cxFolio.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString;
    actividades.FieldByName('sSimbolo').AsString     := '';
    actividades.FieldByName('sTipoActividad').AsString := 'Actividad';
    actividades.FieldByName('sTipoAnexo').AsString     := 'PT';
    actividades.FieldByName('sActividadAnterior').AsString := '';
    actividades.FieldByName('dDuracion').AsInteger     := 1;
    actividades.FieldByName('dPonderado').AsFloat      := 0;
    actividades.FieldByName('dCostoMN').AsFloat        := 0;
    actividades.FieldByName('dCostoDLL').AsFloat       := 0;
    actividades.FieldByName('lCalculo').AsString       := 'Si';
    actividades.FieldByName('sIdFase').AsString        := 'PU';
    actividades.FieldByName('dCantidad').AsFloat       := 1;
    actividades.FieldByName('dVentaMN').AsFloat        := 0;
    actividades.FieldByName('dVentaDLL').AsFloat       := 0;
    actividades.FieldByName('dCargado').AsFloat        := 0;
    actividades.FieldByName('dInstalado').AsFloat      := 0;
    actividades.FieldByName('dExcedente').AsFloat      := 0;
    actividades.FieldByName('icolor').AsInteger        := 0;
    actividades.FieldByName('lExtraordinario').AsString:= 'No';
    actividades.FieldByName('sWbsPU').AsString         := '';
    actividades.FieldByName('sWbsContrato').AsString   := ' ';
    actividades.FieldByName('sPaquete').AsString       := '0';
    actividades.FieldByName('sHoraInicio').AsString    := '00:00';
    actividades.FieldByName('sHoraFinal').AsString     := '24:00';
    actividades.FieldByName('sIdPlataforma').AsString  := folios.FieldByName('sIdPlataforma').AsString;
    actividades.FieldByName('sIdPernocta').AsString    := folios.FieldByName('sIdPernocta').AsString;
    actividades.FieldByName('lGerencial').AsString     := 'No';
    actividades.FieldByName('lGenerado').AsString      := 'No';
    actividades.FieldByName('lCancelada').AsString     := 'No';
    actividades.FieldByName('sIdFase').AsString        := 'OPT';
    actividades.FieldByName('sAnexo').AsString         := 'C';
    actividades.FieldByName('iConsecutivo').AsInteger  := 0;
    actividades.FieldByName('lFactorBarco').AsString   := 'No';
    actividades.FieldByName('lAfectaSuspension').AsString  := 'No';

    UltimaFecha;
    folios.First;
    Medidas.First;
    cxFolio.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString := folios.FieldByName('sNumeroOrden').AsString;
    cxMedida.DataBinding.DataSource.DataSet.FieldByName('sMedida').AsString     := Medidas.FieldByName('sNombre').AsString;

    BotonPermiso.permisosBotones(frmBarra1);
    frmBarra1.btnPrinter.Enabled := False;
    grid_programa.Enabled := False;
    sOpcion := 'Insertar';
    sActividadAnt := '';
end;

procedure TfrmProgramasTrabajo.frmBarra1btnEditClick(Sender: TObject);
begin
   frmBarra1.btnEditClick(Sender);
   try
      actividades.Edit ;

      sFolioAnt   :=  actividades.FieldByName('sNumeroOrden').AsString;
      sWbsAnt :=  actividades.FieldByName('sWbs').AsString;
   except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programa de Trabajo / Folio', 'Al agregar registro', 0);
      frmBarra1.btnCancel.Click ;
      end;
   end ;
   cxDescripcion.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   Grid_programa.Enabled := False;
   sOpcion := 'Editar';
   sActividadAnt := actividades.FieldByName('sNumeroActividad').AsString;;
end;

procedure TfrmProgramasTrabajo.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lBanderaEdit: boolean;
  sId  : string;
begin
    lBanderaEdit := folios.State = dsEdit;
    {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Partida');
    nombres.Add('Cantidad');
    nombres.Add('Descripcion');
    cadenas.Add(cxActividad.Text);
    cadenas.Add(cxCantidad.Text);
    cadenas.Add(cxDescripcion.Text);

    if actividades.FieldByName('sTipoActividad').AsString = 'Actividad' then
    begin
       nombres.Add('Medida');
       cadenas.Add(cxMedida.Text);
    end
    else
       cxMedida.Text;

    if not validaTexto(nombres, cadenas, 'Folio',(cxFolio.Text)) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    if ExisteRegistroBD('actividadesxorden', global_contrato, global_convenio, actividades.FieldByName('sNumeroOrden').AsString, '', actividades.FieldByName('sNumeroActividad').AsString, actividades.FieldByName('mDescripcion').AsString, sActividadAnt) = True then
       exit;

    {Continua insercion de datos..}
   try
       if actividades.FieldByName('iNivel').AsInteger <> 0 then
       begin
           actividades.FieldByName('sNumeroOrden').AsString  := cxFolio.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString;
           actividades.FieldByName('sMedida').AsString := cxMedida.DataBinding.DataSource.DataSet.FieldByName('sMedida').AsString;
           sId := actividades.FieldValues['sNumeroOrden'];


           actividades.FieldByName('sWbsAnterior').AsString := CrearPaqueteFolio(global_contrato, global_convenio, actividades.FieldByName('sNumeroOrden').AsString, 'C', '', folios.FieldByName('mDescripcion').AsString) ;
           actividades.FieldByName('sWbs').AsString       := actividades.FieldByName('sWbsAnterior').AsString +'.'+actividades.FieldByName('sAnexo').AsString +'.'+actividades.FieldByName('sNumeroActividad').AsString;
           actividades.FieldByName('iItemOrden').AsString := '00000001' + sFnBuscaItem(global_convenio,actividades.FieldValues['sNumeroActividad'],
                   actividades.FieldByName('sWbsAnterior').AsString,
                   '00000001',
                   actividades.FieldByName('sTipoActividad').AsString, '', 'actividadesxorden',
                   actividades.FieldByName('iNivel').AsInteger );
       end;

       actividades.Post ;

       BarraMostrar(True,progreso, LabelProceso);
       if sFolioAnt <> '' then
       begin
           ActualizaFechasPaquetes(global_contrato, global_convenio, actividades.FieldByName('sNumeroOrden').AsString, 'actividadesxorden', 'and sNumeroOrden =:Orden', 'dCantidad', 100, progreso);
           if actividades.FieldByName('sTipoActividad').AsString = 'Actividad' then
              UpadateActividades('actividadesxorden', global_contrato, global_convenio, actividades.FieldByName('sNumeroOrden').AsString,actividades.FieldByName('sWbs').AsString, actividades.FieldByName('sNumeroActividad').AsString, actividades.FieldByName('iItemOrden').AsString, actividades.FieldByName('mDescripcion').AsString, sWbsAnt,'S/Plat', 'S/Perc',0,0,-1)
           else
              UpadateActividades('actividadesxorden', global_contrato, global_convenio, actividades.FieldByName('sNumeroOrden').AsString,actividades.FieldByName('sWbs').AsString, actividades.FieldByName('sNumeroActividad').AsString, actividades.FieldByName('iItemOrden').AsString, actividades.FieldByName('mDescripcion').AsString, sWbsAnt,'S/Plat', 'S/Perc',actividades.FieldByName('dFechaInicio').AsDateTime,actividades.FieldByName('dFechaFinal').AsDateTime,12);
           sFolioAnt    := '';
           sWbsAnt := '';
       end
       else
          ActualizaFechasPaquetes(global_contrato, global_convenio, actividades.FieldByName('sNumeroOrden').AsString, 'actividadesxorden', 'and sNumeroOrden =:Orden', 'dCantidad', 100, progreso);
       BarraMostrar(False,progreso, LabelProceso);

       Grid_programa.Enabled := True;

       if global_frmActivo = 'frm_bitacoradepartamental_2' then
       begin
         try
             frmBitacoradepartamental_2.BuscaObjeto.Refresh;
             close;
         Except
         end;
       end;

       SavePlace := cxViewPrograma.DataController.DataSource.DataSet.GetBookmark;
       actividades.Refresh;

       try
          cxViewPrograma.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
       except
       else
          cxViewPrograma.DataController.DataSet.FreeBookmark(SavePlace);
       end;

       frmBarra1.btnPostClick(Sender);
   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programa de Trabajo / Folio', 'Al salvar registro', 0);
           frmBarra1.btnCancel.Click ;
       end;
   end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   actividades.Filtered := False;
   Folios.Filtered := False;
   if lBanderaEdit then
   begin
      Grid_programa.Enabled := True;
      sOpcion := '';
   end;

   if sOpcion = 'Insertar' then
   begin
       frmProgramasTrabajo.frmBarra1.btnAdd.OnClick(sender);
   end;
end;

procedure TfrmProgramasTrabajo.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   actividades.Cancel ;
   actividades.Filtered := False;
   Folios.Filtered      := False;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   Grid_programa.Enabled := True;
end;

procedure TfrmProgramasTrabajo.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If folios.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if DeleteMateriales(actividades.FieldByName('sNumeroOrden').AsString, actividades.FieldByName('sNumeroActividad').AsString) then
      begin
         messageDLG('La Partida '+actividades.FieldByName('sNumeroActividad').AsString + ' Está reportada.', mtInformation, [mbOk],0);
         exit;
      end;

      if ReportoActividad('actividadesxorden', global_contrato, global_convenio, actividades.FieldByName('sNumeroOrden').AsString,actividades.FieldByName('sWbs').AsString, actividades.FieldByName('sNumeroActividad').AsString, actividades.FieldByName('iItemOrden').AsString, actividades.FieldByName('mDescripcion').AsString, sWbsAnt) = True then
         exit;

      try
        actividades.Delete ;

      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programa de Trabajo / Folio', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmProgramasTrabajo.frmBarra1btnRefreshClick(Sender: TObject);
begin
   folios.refresh;

   SavePlace := cxViewPrograma.DataController.DataSource.DataSet.GetBookmark;
   actividades.Refresh;

   try
      cxViewPrograma.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
   except
   else
      cxViewPrograma.DataController.DataSet.FreeBookmark(SavePlace);
   end;
end;

procedure TfrmProgramasTrabajo.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Close;
end;

procedure TfrmProgramasTrabajo.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmProgramasTrabajo.cxAbrirClick(Sender: TObject);
var
   x, y, i : Integer;
begin

  OpenXLS.Title := 'Seleccione Plantilla de MS Excel';
  if OpenXLS.Execute then
  begin
      cxArchivo.Text := OpenXLS.FileName;

      for x := 1 to 26 do
          columnas[x] := Chr(64 + x);

      i := 27;
      for x := 1 to 9 do
      begin
           for y := 1 to 26 do
           begin
               columnas[i] := Chr(64+ x) + Chr(64 + y);
               i := i + 1;
           end;
      end;
  end;
end;

procedure TfrmProgramasTrabajo.cxAccesoFolioClick(Sender: TObject);
begin
   folios.Filtered := False;
   if not MostrarFormChild('frmOrdenesctrlObra', frmNoil.dxBarManager1, frmNoil) then
   begin
       global_frmActivo := 'frmProgramasTrabajo';
       Application.CreateForm(TfrmOrdenesctrlObra, frmOrdenesctrlObra);
       frmOrdenesCtrlObra.show;
   end;
end;

procedure TfrmProgramasTrabajo.cxAccesoPernoctaClick(Sender: TObject);
begin
   if not MostrarFormChild('frmOrdenesctrlObra', frmNoil.dxBarManager1, frmNoil) then
   begin
       global_frmActivo := 'frmProgramasTrabajo';
       Application.CreateForm(TfrmPernoctan, frmPernoctan);
       frmPernoctan.show;
   end;
end;

procedure TfrmProgramasTrabajo.cxAccesoPlataformaClick(Sender: TObject);
begin
   if not MostrarFormChild('frmOrdenesctrlObra', frmNoil.dxBarManager1, frmNoil) then
   begin
       global_frmActivo := 'frmProgramasTrabajo';
       Application.CreateForm(TfrmPlataformas, frmPlataformas);
       frmPlataformas.show;
   end;
end;

procedure TfrmProgramasTrabajo.cxCancelarClick(Sender: TObject);
begin
   panelImportar.Visible := False;
   cxSplitDatos.Visible := False;
   folios.Cancel;
end;

procedure TfrmProgramasTrabajo.cxFechaInicioPropertiesChange(Sender: TObject);
begin
   if (actividades.State = dsInsert) or (actividades.State = dsEdit) then
   begin
       if (cxFechaInicio.Text <> '') and (cxFechaTermino.Text <> '') then
       begin
           if cxFechaInicio.Date > cxFechaTermino.Date then
           begin
               messageDLG('Fecha de Inicio Mayor a Fecha de Término', mtInformation, [mbOk], 0);
               exit;
           end;
       end;
   end;
end;

procedure TfrmProgramasTrabajo.cxFechaTerminoPropertiesEditValueChanged(
  Sender: TObject);
begin
   if (actividades.State = dsInsert) or (actividades.State = dsEdit) then
   begin
       if (cxFechaInicio.Text <> '') and (cxFechaTermino.Text <> '') then
       begin
           if cxFechaInicio.Date > cxFechaTermino.Date then
           begin
               messageDLG('Fecha de Inicio Mayor a Fecha de Término', mtInformation, [mbOk], 0);
               exit;
           end;
       end;
   end;
end;

procedure TfrmProgramasTrabajo.cxImportarClick(Sender: TObject);
var
   CodErr1, CodErr2: String;
   Fila, BotonSelec : Integer;
   SobreTodos: Boolean;

   zAnexo,
   zSitio  : TZReadOnlyQuery;
   sValue  : string;

   ImpsConvenio, ImpsNumeroOrden : string;
begin
  {cODIGOC COLORES}
   CodigoColor[1] := '';
   CodigoColor[2] := '';
   CodigoColor[3] := '';
   CodigoColor[4] := '';

   // Verificar si se ha seleccionado algun archivo
   if (cxArchivo.Text = '') or ((cxArchivo.Text <> '') and Not FileExists(cxArchivo.Text)) then
   begin
      MessageDlg('El archivo seleccionado es incorrecto, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0);
      Exit;
   end;

   {$REGION 'Importa Archivos de Microsoft Excel'}

         //Asignacion de la ruta del archivo de Excel...
//         Try
//           Try
              CodErr1 := 'Al generar ambiente de EXCEL para levantamiento de información';
              CodErr2 := 'Al intentar modificar atributos de EXCEL';

              flcid := GetUserDefaultLCID;
              ExcelApplication1.Connect;
              ExcelApplication1.Visible[flcid] := true;
              ExcelApplication1.UserControl := true;

              ExcelWorkbook1.ConnectTo(ExcelApplication1.Workbooks.Open(cxArchivo.Text,
                emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam,
                emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, flcid));

              {Antes de iniciar peguntamos al Usuraio si Tomamos Datos del Contrato Actual o el de Excel..}

              ExcelWorksheet1.ConnectTo(ExcelWorkbook1.Sheets.Item[1] as ExcelWorkSheet);
              Fila := 1;
              SobreTodos := False;

            {$REGION 'PROGRAMA DE TRABAJO'}

            CodErr1 := '';
            CodErr2 := '';



            zSitio := TZReadOnlyQuery.Create( nil );
            zSitio.Connection := connection.zConnection;

            zSitio.Active := False;
            zSitio.SQL.Clear;
            zSitio.SQL.Add('select sNumeroOrden, sIdFolio, sIdConvenio from ordenesdetrabajo where sContrato =:Contrato ');
            zSitio.Params.ParamByName('Contrato').DataType := ftString;
            zSitio.Params.ParamByName('Contrato').Value    := global_contrato;
            zSitio.Open;

            zAnexo := TZReadOnlyQuery.Create( nil );
            zAnexo.Connection := connection.zConnection;

            zAnexo.Active := False;
            zAnexo.SQL.Add('select * from anexos');
            zAnexo.Open;

            if ValidaFormato then
              Raise Exception.Create('Proceso Cancelado por el Sistema');

            Fila := 8;
            sValue          := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
            ImpsConvenio    := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;;
            ImpsNumeroOrden := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;

            zSitio.Locate('sIdFolio', ImpsNumeroOrden, [loCaseInsensitive]);
            ImpsNumeroOrden := zSitio.FieldByName('sNumeroOrden').AsString;
            ImpsConvenio := 'P-0'+ImpsConvenio;


            BotonSelec :=  MessageDlg('Desea remplazar el Programa de trabajo existente?', mtConfirmation, [mbYes, mbNo], 0);
            // Se elimina el catalogo de Anexo..
            if BotonSelec = mrYes then
            begin
//                    BarraMostrar(True,progreso, LabelProceso);
//                   {Ahora llamamos la funcion que verifica si se puede eliminar el programa..}
//                   if BuscaAntesEliminar_datos(1,'actividadesxorden,ordenesdetrabajo,convenios,ordenesxusuario,reportediario', 'sContrato', 'sNumeroOrden', 'sWbs', '', global_contrato, ImpsNumeroOrden, 'A.%', '',
//                     ' el Programa de Trabajo '+ImpsNumeroOrden,  True, progreso) then
//                   begin
//                       BarraMostrar(False,progreso, LabelProceso);
//                       exit;
//                   end
//                   else
//                      //Sino se encontraron datos se procede a eliminar..
//                      chkBorrar.Checked := True;
            end;

//                if chkBorrar.Checked then
//                begin
//                    iNivel              := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
//                    ImpsNumeroActividad := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
//
//                    {procedure BuscaElimina_datos(sParamTabla, sLlevaContrato, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamContrato, sParamFolio, sParamWbs, sParamPlazo, sParamNuevoContrato, sParamNuevoFolio, sParamNuevaWbs, sParamNuevaAct : string; accion :string);}
//                    BuscaElimina_datos(1,'ordenesdetrabajo,convenios,ordenesxusuario', 'sContrato', 'sNumeroOrden', 'sWbs', 'sIdConvenio', global_contrato, ImpsNumeroOrden, '%', ImpsConvenio, '', '', '', '', 'borrar', False, progreso);
//                end;
//                BarraMostrar(False,progreso, LabelProceso);



            sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
            BarraMostrar(True,progreso, LabelProceso);
                
//            t := 1;
//            while (sValue <> '') do
//            begin
//                CodErr1 := '';
//                CodErr2 := '';
//
//                if lContratoActual then
//                  ImpsContrato := global_contrato
//                else
//                  ImpsContrato    := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
//                ImpsNumeroOrden := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
//                zSitio.Locate('sIdFolio', ImpsNumeroOrden, [loCaseInsensitive]);
//                ImpsNumeroOrden := zSitio.FieldByName('sNumeroOrden').AsString;
//
//                iNivel              := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
//                ImpsNumeroActividad := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
//                ImpmDescripcion     := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
//                ImpsMedida          := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2;
//                ImpdCantidadAnexo   := ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2;
//                ImpdPonderado       := ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2;
//                ImpdFechaInicio     := DateToStr(ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila)), 'J' + Trim(IntToStr(Fila))].Value2);
//                ImpdFechaFinal      := DateToStr(ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2);
//                ImpsTipo            := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;
//                ImpsAnexo           := ExcelWorksheet1.Range['M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila))].Value2;
//                zAnexo.Locate('sDescripcion', ImpsAnexo, [loCaseInsensitive]);
//                ImpsAnexo := zAnexo.FieldByName('sAnexo').AsString;
//
//                NuevaFechaInicial :=           ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila)), 'J' + Trim(IntToStr(Fila))].Value;
//                NuevaFechaFinal   :=           ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value;
//
//                if Trim(ImpsMedida) = '' then
//                   sTipo := 'Paquete'
//                else
//                   sTipo := 'Actividad' ;
//
//                sWbs := '';
//                if iNivel <> 0 then
//                begin
//                    for x := 1 to t - 1 do
//                    begin
//                       if iNivel - 1 >= strToint(paquete[x][1]) then
//                       begin
//                            if (sTipo = 'Actividad') and (ImpsAnexo <> '') then
//                              sWbs := paquete[x][2] + '.' + ImpsAnexo + '.'
//                            else
//                              sWbs := paquete[x][2] + '.' ;
//                              ImpsWbsAnterior := paquete[x][2];
//                        end;
//                    end;
//
//                    {Obtenemos la Wbs Anterior si selccionamos la Opcion ordenar x inteligent..}
//                    if lOrdenInteligent then
//                    begin
//                        connection.QryBusca.Active := False ;
//                        connection.QryBusca.SQL.Clear ;
//                        connection.QryBusca.SQL.Add ('select iItemOrden from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and iNivel =:Nivel and sWbs =:WbsAnt order by iItemOrden ') ;
//                        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
//                        connection.QryBusca.Params.ParamByName('Contrato').value    := global_contrato ;
//                        connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
//                        connection.QryBusca.Params.ParamByName('Convenio').value    := ImpsConvenio ;
//                        connection.QryBusca.Params.ParamByName('WbsAnt').DataType   := ftString ;
//                        if (sTipo = 'Actividad') and (ImpsAnexo <> '') then
//                            connection.QryBusca.Params.ParamByName('WbsAnt').value    := copy(sWbs, 1, length(sWbs) -(length(ImpsAnexo)+2))
//                        else
//                            connection.QryBusca.Params.ParamByName('WbsAnt').value    := copy(sWbs, 1, length(sWbs) -1) ;
//                        connection.QryBusca.Params.ParamByName('Nivel').DataType    := ftInteger ;
//                        connection.QryBusca.Params.ParamByName('Nivel').value       := iNivel - 1;
//                        connection.QryBusca.Open ;
//
//                        if connection.QryBusca.RecordCount > 0 then
//                           sItemOrdenAnterior := connection.QryBusca.FieldValues['iItemOrden']
//                        else
//                           sItemOrdenAnterior := '';
//                    end;
//
//                    sWbs := sWbs + ImpsNumeroActividad;
//                    if lMsExcel then
//                       ImpiItemOrden :=  sFnInsertaItem(ImpsConvenio, ImpsNumeroActividad, ImpsWbsAnterior, '', sTipo, 'actividadesxorden', ImpsNumeroOrden, '', iNivel);
//
//                    if lOrdenInteligent then
//                       ImpiItemOrden :=  sItemOrdenAnterior + sFnBuscaItem(ImpsConvenio,ImpsNumeroActividad, ImpsWbsAnterior, sItemOrdenAnterior, sTipo, '', 'actividadesxorden', iNivel);
//                end
//                else
//                begin
//                    if lMsExcel then
//                      ImpiItemOrden := sFnInsertaItem(ImpsConvenio, ImpsNumeroActividad,
//                                                      ImpsWbsAnterior, '', sTipo,'actividadesxorden', ImpsNumeroOrden, '', iNivel);
//                    if lOrdenInteligent then
//                      ImpiItemOrden  :=  sFnBuscaItem(ImpsConvenio,ImpsNumeroActividad, ImpsWbsAnterior, sItemOrdenAnterior, sTipo, '', 'actividadesxorden', iNivel);
//
//                    ImpsWbsAnterior := '';
//                    sWbs            :=  ImpsNumeroActividad;
//                end;
//
//                if  sTipo = 'Paquete' then
//                begin
//                  paquete[t][1] := inttostr(iNivel);
//                  paquete[t][2] := sWbs;
//                  paquete[t][3] := ImpiItemOrden ;
//                  t := t + 1 ;
//                end;
//
//                {$REGION 'Wbs Anterior '}
//                if sTipo = 'Actividad' then
//                begin
//                    Connection.qryBusca.Active := False;
//                    Connection.qryBusca.SQL.Clear;
//                    Connection.qryBusca.SQL.Add('Select sWbs, sActividadAnterior, mDescripcion, dVentaMN, dVentaDLL, sMedida, dCantidadAnexo, dFechaInicio, dFechaFinal, sAnexo, sTipoAnexo ' +
//                                                'From actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad ' +
//                                                'and sTipoActividad = "Actividad" and sAnexo=:anexo ');
//                    Connection.qryBusca.Params.ParamByName('Contrato').DataType  := ftString;
//                    Connection.qryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
//                    Connection.qryBusca.Params.ParamByName('Convenio').DataType  := ftString;
//                    Connection.qryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
//                    Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
//                    Connection.qryBusca.Params.ParamByName('Actividad').Value    := ImpsNumeroActividad;
//                    Connection.qryBusca.Params.ParamByName('anexo').DataType     := ftString;
//                    Connection.qryBusca.Params.ParamByName('anexo').Value        := ImpsAnexo;
//                    Connection.qryBusca.Open;
//
//                    if Connection.qryBusca.RecordCount > 0 then
//                       ImpsWbsContrato := Connection.qryBusca.FieldValues['sWbs'];
//                end
//                else
//                begin
//                    {Para el caso de la integirdad de datos.. tomamos la sWbs del Paquete principal..}
//                    Connection.qryBusca.Active := False;
//                    Connection.qryBusca.SQL.Clear;
//                    Connection.qryBusca.SQL.Add('Select sWbs From actividadesxanexo Where sContrato = :Contrato And sIdConvenio =:Convenio and sTipoActividad = "Paquete" and iNivel = 0');
//                    Connection.qryBusca.Params.ParamByName('Contrato').DataType  := ftString;
//                    Connection.qryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
//                    Connection.qryBusca.Params.ParamByName('Convenio').DataType  := ftString;
//                    Connection.qryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
//                    Connection.qryBusca.Open;
//
//                    if connection.QryBusca.RecordCount > 0 then
//                       ImpsWbsContrato := Connection.qryBusca.FieldValues['sWbs']
//                    else
//                       ImpsWbsContrato := '';
//
//                end;
//                {$ENDREGION}
//
////                    Try
//                    // Inserto Datos a la Tabla .....
//                    CodErr1 := 'Al importar información del programa de trabajo desde EXCEL';
//                    CodErr2 := 'Al insertar registros de actividadesxorden';
//
//                    CargarProgramadeTrabajo(ImpsContrato, ImpsNumeroOrden, ImpsConvenio, sTipo, ImpsWbsAnterior, sWbs,
//                              ImpsWbsContrato, ImpsNumeroActividad, ImpiItemOrden, ImpmDescripcion,
//                              StrToDate(ImpdFechaInicio), StrToDate(ImpdFechaFinal), ImpsMedida,
//                              0, 0, StrToFloat(ImpdCantidadAnexo), StrToFloat(ImpdPonderado),
//                              iNivel, ImpsTipo, ImpsAnexo, ImpsActAnterior);
//
////                    Except
////                      on e:exception do
////                      begin
////                       end;
////                    End ;
//                BarraProgresoAvance(Progreso, 0,100,100/iCountRegistrosBarra);
//                fila := fila + 1 ;
//                sValue := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2);
//            end;// Termino del While
//
//            zSitio.Destroy;
//
//            CreaPlazo(ImpsContrato, ImpsConvenio, ImpsNumeroOrden, StrToDate(ImpdFechaInicio), StrToDate(ImpdFechaFinal));
//
//            if BotonSelec = mrYes then
//            begin
//                try
//                  kardex_almacen('Importa Programa de Trabajo No. ['+ImpsNumeroOrden+'] Proyecto No. [' + global_contrato + ']', 'Otros Movimientos');
//                except
//                    on e : exception do
//                    begin
//                      // Aquí si se debe dejar independiente esta excepción debido a que si no se puede registrar el kardex tampoco se quiere que se cancele todo el proceso.
//                      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importación de Plantillas', 'Al registrar en kardex Importacion de Programa de Trabajo', 0);
//                    end;
//                end;
//            end;
//
//            {$ENDREGION}
//
//
//            MessageDlg('Proceso Terminado con exito...', mtInformation, [mbOk], 0);
//          except
//              on E: Exception do
//              begin
//                  //Connection.zConnection.RollBack; // Ante un error, cancelar todos los cambios realizados
//                  BarraMostrar(True,progreso, LabelProceso);
//                  //MessageDlg(e.ClassName + ' - ' + e.Message, mtInformation, [mbOk], 0)
//                  if (CompareText(e.ClassName, 'Exception') = 0) then
//                     MessageDlg(e.ClassName + '   ' + e.Message, mtInformation, [mbOk], 0)
//                  else
//                     if CodErr1 = '' then
//                        MessageDlg(e.Message, mtInformation, [mbOk], 0)
//                     else
//                        UnitExcepciones.manejarExcep(E.Message, E.ClassName, CodErr1, CodErr2, 0);
//              end;
//          end;
//        Finally
//            Try
//              ExcelApplication1.Quit;
//            Except
//              // No Hacer nada, solamente es para evitar los errores cuando excel se encuentre ocupado
//            End;
//            ExcelApplication1.Disconnect;
//            sleep(500);
//            BarraMostrar(False,progreso, LabelProceso);
//        End;

end;

procedure TfrmProgramasTrabajo.cxNivelPropertiesChange(Sender: TObject);
begin
  if (actividades.State = dsInsert) or (actividades.State = dsEdit) then
   begin
       if (cxNivel.Text <> '') then
       begin
           if cxNivel.Value > 1 then
           begin
              if ChecaNivel = false then
                 cxNivel.Value := 1;
           end
           else
           begin
               if (cxNivel.Value = 0) and (cxClasificacion.Text = 'Actividad') then
               begin
                   messagedLG('No se puede cargar una Actividad en el Nivel Principal', mtInformation, [mbOk], 0);
                   cxNivel.Value := 1;
               end;
           end;
       end;
   end;
end;

procedure TfrmProgramasTrabajo.cxOpiconImportarClick(Sender: TObject);
var
   sLastPlataforma, sLastPernocta, sLastCSU : string;
begin
   panelImportar.Visible := True;
   cxSplitDatos.Visible := true;
   cxCSU.Text := '000-00-0000';

   actividades.Last;

   sLastPlataforma := folios.FieldByName('sIdPlataforma').AsString;
   sLastPernocta   := folios.FieldByName('sIdPernocta').AsString;
   sLastCSU        := folios.FieldByName('sCsu').AsString;

   folios.Append;
   folios.FieldByName('sIdPlataforma').AsString := sLastPlataforma;
   folios.FieldByName('sIdPernocta').AsString   := sLastPernocta;
   cxCsu.Text  := slastCSu;
   cxArchivo.Text := '';
end;

procedure TfrmProgramasTrabajo.cxOrdenaAZClick(Sender: TObject);
var
   sItemPrior, sItemActual :string;
begin
    if actividades.FieldByName('iNivel').AsInteger = 0 then
       exit;
    sItemActual := actividades.FieldByName('iItemOrden').AsString;
    actividades.Prior;
    SavePlace := cxViewPrograma.DataController.DataSource.DataSet.GetBookmark;
    sItemPrior  := actividades.FieldByName('iItemOrden').AsString;
    if actividades.FieldByName('iNivel').AsInteger > 0 then
    begin
       actividades.Edit;
       actividades.FieldByName('iItemorden').AsString := sItemActual;
       actividades.Post;
       actividades.Next;
       actividades.Edit;
       actividades.FieldByName('iItemorden').AsString := sItemPrior;
       actividades.Post;
       UpadateActividades('actividadesxorden', global_contrato, global_convenio, actividades.FieldByName('sNumeroOrden').AsString,actividades.FieldByName('sWbs').AsString, actividades.FieldByName('sNumeroActividad').AsString, actividades.FieldByName('iItemOrden').AsString, '', actividades.FieldByName('sWbs').AsString,'S/Plat', 'S/Perc',0,0,5);
       actividades.Refresh;
       try
          cxViewPrograma.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
       except
       else
          cxViewPrograma.DataController.DataSet.FreeBookmark(SavePlace);
       end;
    end;
end;

procedure TfrmProgramasTrabajo.cxOrdenaZAClick(Sender: TObject);
var
   sItemNext, sItemActual, sFolio :string;
begin
    if actividades.FieldByName('iNivel').AsInteger = 0 then
       exit;
    sItemActual := actividades.FieldByName('iItemOrden').AsString;
    sFolio      := actividades.FieldByName('sNumeroOrden').AsString;
    actividades.Next;
    SavePlace := cxViewPrograma.DataController.DataSource.DataSet.GetBookmark;
    sItemNext  := actividades.FieldByName('iItemOrden').AsString;
    if actividades.FieldByName('sNumeroOrden').AsString = sFolio then
    begin
       actividades.Edit;
       actividades.FieldByName('iItemorden').AsString := sItemActual;
       actividades.Post;
       actividades.Prior;
       actividades.Edit;
       actividades.FieldByName('iItemorden').AsString := sItemNext;
       actividades.Post;
       UpadateActividades('actividadesxorden', global_contrato, global_convenio, actividades.FieldByName('sNumeroOrden').AsString,actividades.FieldByName('sWbs').AsString, actividades.FieldByName('sNumeroActividad').AsString, actividades.FieldByName('iItemOrden').AsString, '', actividades.FieldByName('sWbs').AsString,'S/Plat','S/Perc',0,0,5);
       actividades.Refresh;
       try
          cxViewPrograma.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
       except
       else
          cxViewPrograma.DataController.DataSet.FreeBookmark(SavePlace);
       end;
    end;
end;

procedure TfrmProgramasTrabajo.cxPlataformaPropertiesChange(Sender: TObject);
begin
  cxPlataforma.DataBinding.DataSource.DataSet.FieldByName('sIdPlataforma').AsString := cxPlataforma.Properties.ListSource.DataSet.FieldByName('sIdPlataforma').AsString;
end;

procedure TfrmProgramasTrabajo.cxViewProgramaDblClick(Sender: TObject);
begin
    if cxViewPrograma.OptionsView.CellAutoHeight then
       cxViewPrograma.OptionsView.CellAutoHeight := False
    else
       cxViewPrograma.OptionsView.CellAutoHeight := True;
end;

procedure TfrmProgramasTrabajo.cxViewProgramaStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin
    AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('iNivel');
    if ARecord.Values[AColumn.Index] = IntToStr(0) then
       AStyle := connection.cxNoImprime ;
end;

procedure TfrmProgramasTrabajo.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmProgramasTrabajo.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmProgramasTrabajo.ActividadesAfterScroll(DataSet: TDataSet);
begin
   if actividades.FieldByName('sTipoActividad').AsString = 'Paquete' then
   begin
      if actividades.FieldByName('iNivel').AsInteger = 0 then
      begin
         cxNivel.Enabled := False;
         cxClasificacion.Enabled := False;
         cxMedida.Enabled := False;
      end;
   end
   else
   begin
      cxNivel.Enabled := True;
      cxClasificacion.Enabled := True;
      cxMedida.Enabled := True;
   end;
end;

procedure TfrmProgramasTrabajo.ActividadesCalcFields(DataSet: TDataSet);
begin
    if actividades.FieldByName('sTipoActividad').AsString = 'Actividad' then
       actividades.FieldByName('AvancePartida').AsFloat :=  actividades.FieldByName('Avance').AsFloat
    else
    begin
        actividades.FieldByName('AvancePartida').AsFloat := actividades.FieldByName('dAvanceAcumulado').AsFloat;
    end;
end;

procedure TfrmProgramasTrabajo.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmProgramasTrabajo.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmProgramasTrabajo.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmProgramasTrabajo.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmProgramasTrabajo.UltimaFecha;
  var
    FiltraFolio  : TZQuery;
begin
    if (actividades.State = dsInsert) or (actividades.State = dsEdit) then
    begin
        Filtrafolio:=TzQuery.create(nil);
        Filtrafolio.Connection := Connection.zConnection;

        folios.Locate('sIdFolio',cxFolio.Text,[]);
        cxFolio.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString := folios.FieldByName('sNumeroOrden').AsString;

        Filtrafolio.Active := False;
        Filtrafolio.SQL.Add('select sNumeroOrden, dFechaInicio, dFechaFinal, iNivel, sTipoActividad from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Folio order by iItemOrden DESC');
        Filtrafolio.Params.ParamByName('Contrato').AsString  := global_contrato;
        Filtrafolio.Params.ParamByName('Convenio').AsString  := global_convenio;
        Filtrafolio.Params.ParamByName('Folio').AsString     := cxFolio.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString;
        Filtrafolio.Open;

        if Filtrafolio.RecordCount > 0 then
        begin
            actividades.FieldByName('dFechaInicio').AsDatetime := Filtrafolio.FieldByName('dFechaFinal').AsDateTime;
            actividades.FieldByName('dFechaFinal').AsDatetime  := Filtrafolio.FieldByName('dFechaFinal').AsDateTime;
            if FiltraFolio.FieldByName('sTipoActividad').AsString = 'Actividad' then
               actividades.FieldByName('iNivel').AsInteger      := Filtrafolio.FieldByName('iNivel').AsInteger
            else
               actividades.FieldByName('iNivel').AsInteger      := Filtrafolio.FieldByName('iNivel').AsInteger + 1;
        end
        else
        begin
            actividades.FieldByName('dFechaInicio').AsDatetime := date;
            actividades.FieldByName('dFechaFinal').AsDatetime  := date;
            actividades.FieldByName('iNivel').AsInteger        := 0;
            actividades.FieldByName('dPonderado').AsFloat      := 100;
            actividades.FieldByName('sTipoActividad').AsString := 'Paquete';

            cxNivel.Enabled := True;
            cxClasificacion.Enabled := True;
            cxMedida.Enabled := True;
        end;
        FiltraFolio.Destroy;
    end;
end;

function TfrmProgramasTrabajo.ChecaNivel : boolean;
var
    FiltraFolio  : TZQuery;
begin
    if (actividades.State = dsInsert) or (actividades.State = dsEdit) then
    begin
        result := True;
        Filtrafolio:=TzQuery.create(nil);
        Filtrafolio.Connection := Connection.zConnection;

        Filtrafolio.Active := False;
        Filtrafolio.SQL.Add('select iNivel from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Folio and iNivel =:Nivel');
        Filtrafolio.Params.ParamByName('Contrato').AsString  := global_contrato;
        Filtrafolio.Params.ParamByName('Convenio').AsString  := global_convenio;
        Filtrafolio.Params.ParamByName('Folio').AsString     := cxFolio.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString;
        Filtrafolio.Params.ParamByName('Nivel').AsInteger    := cxNivel.Value -1;
        Filtrafolio.Open;

        if Filtrafolio.RecordCount = 0 then
        begin
           messagedLG('No existe un Nivel Anterior para asignar la Actividad', mtInformation,  [mbOk], 0);
           result := false;
        end
        else
        begin
            Filtrafolio.Active := False;
            Filtrafolio.SQL.Clear;
            Filtrafolio.SQL.Add('select iNivel from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Folio and iNivel = :Nivel and sTipoActividad = "Paquete"');
            Filtrafolio.Params.ParamByName('Contrato').AsString  := global_contrato;
            Filtrafolio.Params.ParamByName('Convenio').AsString  := global_convenio;
            Filtrafolio.Params.ParamByName('Folio').AsString     := cxFolio.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString;
            Filtrafolio.Params.ParamByName('Nivel').AsInteger    := cxNivel.Value -1;
            Filtrafolio.Open;

            if Filtrafolio.RecordCount = 0 then
            begin
               messagedLG('No existe un Paquete Anterior para asignar la Actividad', mtInformation,  [mbOk], 0);
               result := false;
            end;
        end;
        FiltraFolio.Destroy;
    end;
end;

function TfrmProgramasTrabajo.ValidaFormato: boolean;
var
   Fila, iColumna, i : integer;
   sValue  : string;
begin
    Application.ProcessMessages;
    result := False;

    //Validamos antes algunas columnas del formato.
     Fila     := 1;
     iColumna := 0;
     sValue := ExcelWorksheet1.Range[columnas[Fila] + '11', columnas[Fila] + '11'].Value2;

     for i := 1 to 40 do
     begin
          sValue := ExcelWorksheet1.Range[columnas[i] + '11', columnas[i] + '11'].Value2;
          if (sValue = 'No.') then
             Inc(iColumna);

          if (sValue = 'ACTIVIDADES') then
             Inc(iColumna);

          if (sValue = 'FECHA DE INICIO') then
             Inc(iColumna);

          if (sValue = 'FECHA DE TERMINO') then
             Inc(iColumna);

          if (sValue = 'HRS') then
             Inc(iColumna);
     end;

     for i := 1 to 40 do
     begin
          sValue := ExcelWorksheet1.Range[columnas[i] + '12', columnas[i] + '12'].Value2;
          if (sValue = 'POND.') then
             Inc(iColumna);
     end;

     if iColumna <> 6 then
     begin
         MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato para Importar el Programa de Trabajo.', mtInformation, [mbOk], 0);
         exit;
     end;

    {Temrina Validacion inicial..}
end;




end.
