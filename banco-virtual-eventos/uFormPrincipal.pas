unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    lbNome: TLabel;
    lbTipoConta: TLabel;
    lbSaldo: TLabel;
    edtNome: TEdit;
    boxTipos: TComboBox;
    btnSacar: TButton;
    btnDepositar: TButton;
    btnSaldo: TButton;
    btnAbrirConta: TButton;
    edtValor: TEdit;
    lbValor: TLabel;
    procedure btnAbrirContaClick(Sender: TObject);
    procedure btnSacarClick(Sender: TObject);
    procedure btnDepositarClick(Sender: TObject);
    procedure btnSaldoClick(Sender: TObject);
  private
    { Private declarations }
    FCliente: String;
    FSaldoConta: Double;
    FTipoConta: String;
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.btnAbrirContaClick(Sender: TObject);
begin
  FCliente:= edtNome.Text;
  if boxTipos.ItemIndex = 0 then
    FTipoConta := 'Conta Corrente'
  else if boxTipos.ItemIndex = 1 then
    FTipoConta := 'Conta Poupança'
  else
    FTipoConta := 'Conta Cartão';

  FSaldoConta := 0;
end;

procedure TFormPrincipal.btnDepositarClick(Sender: TObject);
begin
  if FTipoConta = 'Conta Cartão' then
    Exit;

  FSaldoConta := FSaldoConta + StrToFloatDef(edtValor.Text, 0);
end;

procedure TFormPrincipal.btnSacarClick(Sender: TObject);
begin
  if FTipoConta = 'Conta Cartão' then
    Exit;

  if FSaldoConta < StrToFloatDef(edtValor.Text, 0) then
    raise Exception.Create('Saldo insuficiente');

  FSaldoConta := FSaldoConta - StrToFloatDef(edtValor.Text, 0);
end;

procedure TFormPrincipal.btnSaldoClick(Sender: TObject);
begin
  lbSaldo.Caption := FloatToStr(FSaldoConta);
end;

end.
