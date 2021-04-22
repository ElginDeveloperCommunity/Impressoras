unit ImprimeCheque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls;

type
  TFormImprimeCheque = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    MaskEdit1: TMaskEdit;
    Label5: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    MaskEdit2: TMaskEdit;
    optFrente: TRadioButton;
    optVerso: TRadioButton;
    Label13: TLabel;
    Edit11: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    Banco     : string;
    Valor     : string;
    Favorecido: string;
    Cidade    : string;
    Data      : string;
    Mensagem  : string;

  public
    { Public declarations }
  end;

var
  FormImprimeCheque: TFormImprimeCheque;

implementation

uses Principal, UnitDeclaracoes;

{$R *.DFM}


// Fecha o form
procedure TFormImprimeCheque.BitBtn2Click(Sender: TObject);
begin
          Edit1.Text := '';
          Edit2.Text := '';
          Edit3.Text := '';
          Edit4.Text := '';
          Edit5.Text := '';
          MaskEdit1.Text := '';

Close;
end;

procedure TFormImprimeCheque.BitBtn1Click(Sender: TObject);
var Linha, cOpcao:string;
begin
   if Caption = 'Impressão de Cheque' then
      begin
          Banco      := Edit1.Text;
          Valor      := Edit2.Text;
          Favorecido := Edit3.Text;
          Cidade     := Edit4.Text;
          Mensagem   := Edit5.Text;
          Data       := MaskEdit1.Text;

          // Função para imprimir o cheque
          iRetorno := Bematech_FI_ImprimeCheque( Banco, Valor, Favorecido, Cidade, Data, Mensagem );
          // Procedure que analisa o retorno da função
          frmPrincipal.Analisa_iRetorno();
          // Procedure que analisa o retorno da Impressora
          frmPrincipal.Retorno_Impressora();
       end
    else
      begin
          Banco      := Edit6.Text;
          Valor      := Edit7.Text;
          Favorecido := Edit8.Text;
          Cidade     := Edit9.Text;
          Mensagem   := Edit10.Text;
          Data       := MaskEdit2.Text;
          Linha      := Edit11.Text;

          if optFrente.Checked = true then cOpcao := '1';
          if optVerso.Checked  = true then cOpcao := '0';

          // Função para imprimir o cheque
          iRetorno := Bematech_FI_ImprimeChequeMFD( Banco, Valor, Favorecido, Cidade, Data, Mensagem, pchar( cOpcao ), Linha );
          // Procedure que analisa o retorno da função
          frmPrincipal.Analisa_iRetorno();
          // Procedure que analisa o retorno da Impressora
          frmPrincipal.Retorno_Impressora();
       end;
end;


end.
