unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCliente;

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
    Cliente: TCliente;

    function GetValor: Double;
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  uContaFabrica, uEnumconta;

{$R *.dfm}

procedure TFormPrincipal.btnAbrirContaClick(Sender: TObject);
begin
  Cliente := TCliente.Create(edtNome.Text);
  Cliente.Conta := TFabrica.CriarConta(tTipoConta(boxTipos.ItemIndex));
end;

procedure TFormPrincipal.btnDepositarClick(Sender: TObject);
begin
  Cliente.Conta.Depositar(GetValor);
end;

procedure TFormPrincipal.btnSacarClick(Sender: TObject);
begin
  Cliente.Conta.Sacar(GetValor);
end;

procedure TFormPrincipal.btnSaldoClick(Sender: TObject);
begin
  lbSaldo.Caption := Cliente.Conta.Saldo.ToString;
end;

function TFormPrincipal.GetValor: Double;
begin
  Exit(StrToFloatDef(edtValor.Text, 0));
end;

end.
