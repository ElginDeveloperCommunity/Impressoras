unit DownloadMFD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls;

type
  TfrmDownload = class(TForm)
    Label1: TLabel;
    txtNomeArquivo: TEdit;
    grupoTipoDownload: TGroupBox;
    radioCOO: TRadioButton;
    radioData: TRadioButton;
    radioTotal: TRadioButton;
    txtCOOInicial: TEdit;
    txtCOOFinal: TEdit;
    txtUsuario: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    dataInicial: TDateTimePicker;
    dataFinal: TDateTimePicker;
    checkTXT: TCheckBox;
    checkRTF: TCheckBox;
    checkMDB: TCheckBox;
    procedure radioDataClick(Sender: TObject);
    procedure radioCOOClick(Sender: TObject);
    procedure radioTotalClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDownload: TfrmDownload;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}

procedure TfrmDownload.radioDataClick(Sender: TObject);
begin
   dataInicial.Color := clInfoBk;
   dataFinal.Color := clInfoBk;
   dataInicial.Enabled := true;
   dataFinal.Enabled := true;

   txtCOOInicial.Color := clMenu;
   txtCOOFinal.Color := clMenu;
   txtUsuario.Color := clMenu;
   txtCOOInicial.Enabled := false;
   txtCOOFinal.Enabled := false;
   txtUsuario.Enabled := false;
end;

procedure TfrmDownload.radioCOOClick(Sender: TObject);
begin
   txtCOOInicial.Color := clInfoBk;
   txtCOOFinal.Color := clInfoBk;
   txtUsuario.Color := clInfoBk;
   txtCOOInicial.Enabled := true;
   txtCOOFinal.Enabled := true;
   txtUsuario.Enabled := true;

   dataInicial.Color := clMenu;
   dataFinal.Color := clMenu;
   dataInicial.Enabled := false;
   dataFinal.Enabled := false;
end;

procedure TfrmDownload.radioTotalClick(Sender: TObject);
begin
   txtCOOInicial.Color := clMenu;
   txtCOOFinal.Color := clMenu;
   txtUsuario.Color := clMenu;
   txtCOOInicial.Enabled := false;
   txtCOOFinal.Enabled := false;
   txtUsuario.Enabled := false;

   dataInicial.Color := clMenu;
   dataFinal.Color := clMenu;
   dataInicial.Enabled := false;
   dataFinal.Enabled := false;
end;

procedure TfrmDownload.Button1Click(Sender: TObject);
var cTipoDownload, cDataInicial, cDataFinal, cDadoInicial, cDadoFinal, cUsuario, cTipoFormato : string;

begin
   screen.Cursor := crHourGlass;
   if ( frmDownload.Caption = 'Download MFD (Memória de Fita Detalhe)' ) then
      begin
         if ( radioCOO.Checked = true ) then
            begin
               cTipoDownload := '2';
               cDadoInicial  := txtCOOInicial.Text;
               cDadoFinal    := txtCOOFinal.Text;
               cUsuario      := txtUsuario.Text;
               iRetorno := Bematech_FI_DownloadMFD( txtNomeArquivo.Text, cTipoDownload, txtCOOInicial.Text, txtCOOFInal.Text, txtUsuario.Text );
            end;

         if ( radioData.Checked = true ) then
            begin
               cTipoDownload := '1';
               cDataInicial  := formatDateTime( 'DDMMYY', dataInicial.DateTime );
               cDataFinal    := formatDateTime( 'DDMMYY', dataFinal.DateTime   );
               cDadoInicial  := cDataInicial;
               cDadoFinal    := cDataFinal;
               iRetorno := Bematech_FI_DownloadMFD( txtNomeArquivo.Text, cTipoDownload, cDataInicial, cDataFinal, '' );
            end;

         if ( radioTotal.Checked = true ) then
            begin
               cTipoDownload := '0';
               iRetorno := Bematech_FI_DownloadMFD( txtNomeArquivo.Text, cTipoDownload, '', '', '' );
            end;

         if ( checkTXT.Checked = true ) then
            begin
               cTipoFormato := '0';
               iRetorno := Bematech_FI_FormatoDadosMFD( txtNomeArquivo.Text,
                                                        copy( txtNomeArquivo.Text, 1, length( txtNomeArquivo.Text ) - 4  ) + '.TXT',
                                                        pchar( cTipoFormato ),
                                                        pchar( cTipoDownload ),
                                                        pchar( cDadoInicial ),
                                                        pchar( cDadoFinal ),
                                                        pchar( cUsuario ) );
            end;

         if ( checkRTF.Checked = true ) then
            begin
               cTipoFormato := '1';
               iRetorno := Bematech_FI_FormatoDadosMFD( txtNomeArquivo.Text,
                                                        copy( txtNomeArquivo.Text, 1, length( txtNomeArquivo.Text ) - 4  ) + '.RTF',
                                                        pchar( cTipoFormato ),
                                                        pchar( cTipoDownload ),
                                                        pchar( cDadoInicial ),
                                                        pchar( cDadoFinal ),
                                                        pchar( cUsuario ) );
            end;

         if ( checkMDB.Checked = true ) then
            begin
               cTipoFormato := '2';
               iRetorno := Bematech_FI_FormatoDadosMFD( txtNomeArquivo.Text,
                                                        copy( txtNomeArquivo.Text, 1, length( txtNomeArquivo.Text ) - 4  ) + '.MDB',
                                                        pchar( cTipoFormato ),
                                                        pchar( cTipoDownload ),
                                                        pchar( cDadoInicial ),
                                                        pchar( cDadoFinal ),
                                                        pchar( cUsuario ) );
            end;
      end
   else
      iRetorno := Bematech_FI_DownloadMF( txtNomeArquivo.Text );

   screen.Cursor := crHandPoint;

   if ( iRetorno = 1 ) then
      begin
         frmPrincipal.Analisa_iRetorno;
         frmPrincipal.Retorno_Impressora;
         Application.MessageBox( 'Arquivo gerado com sucesso!', 'Atenção', MB_IconInformation + MB_OK );
      end;
end;

procedure TfrmDownload.Button2Click(Sender: TObject);
begin
   screen.Cursor := crDefault;
   frmDownload.Close;
end;

procedure TfrmDownload.FormCreate(Sender: TObject);
begin
   dataInicial.Date := date();
   dataFinal.Date   := date();
end;

end.
