unit frm_SolicitudDetalle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxProgressBar, cxLabel, Vcl.ExtCtrls, cxDBLookupComboBox, MemDS,
  DBAccess, Uni, unitgenerales, cxDropDownEdit, cxTextEdit,global;

type
  TfrmSolicitudDetalle = class(TForm)
    Panel3: TPanel;
    cxLeyenda: TcxLabel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    cxGridSolicitudDetalle: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridSolicitudDetalleColumn1: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn2: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn3: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn4: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn5: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn6: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn7: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn8: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn9: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn10: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn11: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn12: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn13: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn14: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn15: TcxGridDBColumn;
    zLogistica: TUniQuery;
    zEmbalaje: TUniQuery;
    ds_Logistica: TDataSource;
    dsEmbalaje: TDataSource;
    cxGridSolicitudDetalleColumn16: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn17: TcxGridDBColumn;
    cxGridSolicitudDetalleColumn18: TcxGridDBColumn;
    zUsuarios: TUniQuery;
    dsUduarios: TDataSource;
    procedure cxGridSolicitudDetalleCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxGridSolicitudDetalleColumn14PropertiesChange(Sender: TObject);
    Procedure permisos;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSolicitudDetalle: TfrmSolicitudDetalle;

implementation

uses
frm_SolicitudDeMateriales, frm_connection;

{$R *.dfm}

procedure TfrmSolicitudDetalle.cxGridSolicitudDetalleCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if cxGridSolicitudDetalle.OptionsView.CellAutoHeight then
      cxGridSolicitudDetalle.OptionsView.CellAutoHeight := False
   else
      cxGridSolicitudDetalle.OptionsView.CellAutoHeight := True;
end;


procedure TfrmSolicitudDetalle.cxGridSolicitudDetalleColumn14PropertiesChange(
  Sender: TObject);
begin

end;



//procedure TfrmSolicitudDetalle.cxGridSolicitudDetalleColumn14PropertiesEditValueChanged(
//  Sender: TObject);
//begin
//   if zLogistica.Locate('IdLogEmb', cxGridSolicitudDetalleColumn14.EditValue, [])then
//    if zLogistica.FieldByName('Descripcion').AsString = 'NUEVA LOGISTICA' then
//    begin
//      cxGridSolicitudDetalleColumn14.Visible := False;
//      cxGridSolicitudDetalleColumn18.Visible := True;
//      cxGridSolicitudDetalleColumn18.Focused;
//      if cxGridSolicitudDetalleColumn18.Visible then
//      begin
//        zLogistica.Append;
//        zLogistica.FieldByName('Codigo').AsString := autofolio(zLogistica, 'master_logistica_embarque', connection.uContrato.FieldByName('IdEmpresa').AsInteger, 0,0);
//        zLogistica.FieldByName('Tipo').AsString := 'LOGISTICA';
//
//      end;
//
//    end;
//end;


//procedure TfrmSolicitudDetalle.cxGridSolicitudDetalleColumn18PropertiesEditValueChanged(
//  Sender: TObject);
//begin
//       if cxGridSolicitudDetalleColumn18.Visible  then
//      begin
//        zLogistica.FieldByName('Descripcion').AsString := cxGridSolicitudDetalleColumn18.EditValue;
//        zLogistica.Post ;
//
//
//      end;
//end;



procedure TfrmSolicitudDetalle.FormShow(Sender: TObject);
begin

  AsignarSQL(zUsuarios, 'alm_sol_permisos', pUpdate);
  zUsuarios.Open;

  permisos;

  AsignarSQL(zLogistica, 'master_logistica_embalaje', pUpdate);
  FiltrarDataSet(zLogistica, 'Id, Tipo', [-1, 'LOGISTICA']);
  zLogistica.Open;

  AsignarSQL(zEmbalaje, 'master_logistica_embalaje', pUpdate);
  FiltrarDataSet(zEmbalaje, 'Id, Tipo', [-1, 'EMBALAJE']);
  zEmbalaje.Open;

end;

procedure TfrmSolicitudDetalle.permisos;
begin
  if (zUsuarios.Locate('sIdUsuario;TipoPermiso', varArrayOf([global_usuario, 'TODOS']),[]))  then
  begin
    cxGridSolicitudDetalleColumn14.Options.Editing := True;
    cxGridSolicitudDetalleColumn15.Options.Editing := True;
    cxGridSolicitudDetalleColumn11.Options.Editing := True;
    cxGridSolicitudDetalleColumn12.Options.Editing := True;
    cxGridSolicitudDetalleColumn13.Options.Editing := True;
    cxGridSolicitudDetalleColumn16.Options.Editing := True;
    cxGridSolicitudDetalleColumn17.Options.Editing := True;
  end;

  if (zUsuarios.Locate('sIdUsuario;TipoPermiso', varArrayOf([global_usuario, 'LOGISTICA']),[])) then
  begin
    cxGridSolicitudDetalleColumn14.Options.Editing := True;
    cxGridSolicitudDetalleColumn15.Options.Editing := True;
    cxGridSolicitudDetalleColumn11.Options.Editing := True;
    cxGridSolicitudDetalleColumn12.Options.Editing := True;
    cxGridSolicitudDetalleColumn13.Options.Editing := True;
  end;

  if (zUsuarios.Locate('sIdUsuario;TipoPermiso', varArrayOf([global_usuario, 'MANIFIESTO']),[])) then
  begin
    cxGridSolicitudDetalleColumn17.Options.Editing := True;
  end;
end;



end.
