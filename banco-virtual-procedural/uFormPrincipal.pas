unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

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
    FTipoConta: Integer;

    procedure AbrirConta;
    procedure DepositarConta;
    procedure SacarConta;
    procedure ValidarSaldo;
    function IsContaCartao: Boolean;
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.AbrirConta;
begin
  // Usar metodo GetCliente por exemplo e mesma coisa para os demais
  FCliente    := edtNome.Text;
  FTipoConta  := boxTipos.ItemIndex;
  FSaldoConta := 0;
end;

procedure TFormPrincipal.btnAbrirContaClick(Sender: TObject);
begin
  AbrirConta;
end;

procedure TFormPrincipal.btnDepositarClick(Sender: TObject);
begin
  if IsContaCartao then
    Exit;

  DepositarConta;
end;

procedure TFormPrincipal.btnSacarClick(Sender: TObject);
begin
  if IsContaCartao then
    Exit;

  ValidarSaldo;
  SacarConta;
end;

procedure TFormPrincipal.btnSaldoClick(Sender: TObject);
begin
  lbSaldo.Caption := FloatToStr(FSaldoConta);
end;

procedure TFormPrincipal.DepositarConta;
begin
  FSaldoConta := FSaldoConta + StrToFloatDef(edtValor.Text, 0);
end;

function TFormPrincipal.IsContaCartao: Boolean;
begin
  Result := FTipoConta = 2;
end;

procedure TFormPrincipal.SacarConta;
begin
  FSaldoConta := FSaldoConta - StrToFloatDef(edtValor.Text, 0);
end;

procedure TFormPrincipal.ValidarSaldo;
begin
  if FSaldoConta < StrToFloatDef(edtValor.Text, 0) then
    raise Exception.Create('Saldo insuficiente');
end;

end.
