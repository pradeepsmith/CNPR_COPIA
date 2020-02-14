unit uFrmErroresLecturaBiometrico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCalendar, cxTimeEdit,
  cxContainer, frm_barraH1, cxLabel, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons, MemDS, DBAccess,
  Uni, Vcl.ExtDlgs, ShellApi;

type
  TFrmErroresLecturaBiometrico = class(TForm)
    cxGridAsistenciaMedica: TcxGrid;
    cxGridAsistenciaMedicaDBTableView1: TcxGridDBTableView;
    cxGridAsistenciaMedicaDBTableView1Column1: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column2: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column3: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column4: TcxGridDBColumn;
    cxGridAsistenciaMedicaLevel1: TcxGridLevel;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    qryErrores: TUniQuery;
    dsErrores: TDataSource;
    cxGridAsistenciaMedicaDBTableView1Column5: TcxGridDBColumn;
    saveFile: TSaveTextFileDialog;
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmErroresLecturaBiometrico: TFrmErroresLecturaBiometrico;

implementation
         uses frm_connection,UnitGenerales,Comobj,frm_agregar_personal;
{$R *.dfm}

procedure TFrmErroresLecturaBiometrico.cxButton1Click(Sender: TObject);
var
    strList: TStringList;
    line, delimiter , FileName: String;
begin

  delimiter := ',';
  saveFile.Title := 'Seleccione el archivo de salida';
  saveFile.InitialDir := GetCurrentDir;
  saveFile.DefaultExt := 'csv';
  saveFile.FilterIndex := 1;
  if saveFile.Execute then
  begin
    FileName := saveFile.FileName;
    strList := TStringList.Create;

    try

      qryErrores.First;
      while not qryErrores.Eof do
      begin

        line := '';

        line := line +  qryErrores.FieldByName('id').AsString + delimiter;
        line := line +  qryErrores.FieldByName('fecha').AsString + delimiter;
        line := line +  qryErrores.FieldByName('CodigoEmpleado').AsString + delimiter;
        line := line +  qryErrores.FieldByName('codigo_error').AsString + delimiter;
        line := line +  qryErrores.FieldByName('mensage').AsString + delimiter;

        strList.Insert(0,line);
        qryErrores.Next;
      end;

      line := '';
      line := line +  '#' + delimiter;
      line := line +  'FECHA' + delimiter;
      line := line +  'CODIGO EMPLEADO' + delimiter;
      line := line +  'CODIGO ERROR' + delimiter;
      line := line +  'MENSAJE ERROR' + delimiter;

      strList.Insert(0,line);

      strList.SaveToFile(FileName);

      ShellExecute(0, 'open', PChar(FileName), nil, '', SW_SHOWNORMAL);

    finally
      strList.Free;
    end;
  end
end;

procedure TFrmErroresLecturaBiometrico.cxButton2Click(Sender: TObject);
var
  I, J:integer;
  Id: Integer;
  qryUdp : TUniQuery;
begin

  qryUdp := TUniQuery.Create(nil);

  try
    if  cxGridAsistenciaMedicaDBTableView1.Datacontroller.getselectedcount > 0 then
    begin
        AsignarSQL(qryUdp, 'ErroresLecturaBioUdp', pUpdate);
        For I:=0 to cxGridAsistenciaMedicaDBTableView1.Datacontroller.getselectedcount-1 DO
        begin
          J := cxGridAsistenciaMedicaDBTableView1.DataController.GetSelectedRowIndex(I);
          Id := StrToInt(Vartostr(cxGridAsistenciaMedicaDBTableView1.Datacontroller.getvalue (J, 0)));

          qryUdp.Active := False;
          qryUdp.ParamByName('Id').AsInteger := Id;
          qryUdp.Open;

          if qryUdp.RecordCount > 0 then
          begin
            qryUdp.Edit;
            qryUdp.FieldByName('Leido').AsInteger := 1;
            qryUdp.Post;
            qryUdp.Active := False;
          end;
        end;

        qryErrores.Refresh;
    end
    else
    begin
       showmessage('Debe seleccionar los registros para marcar como leidos');
    end;
  finally
    qryUdp.Free;
  end;
end;

procedure TFrmErroresLecturaBiometrico.FormShow(Sender: TObject);
begin
   // qryErrores.Active := False;
    AsignarSQL(qryErrores, 'ErroresLecturaBio', pReadOnly);
    qryErrores.Open;
end;

end.
