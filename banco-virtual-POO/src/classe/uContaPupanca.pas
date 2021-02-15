unit uContaPupanca;

interface

uses
  uConta;

type
  TContaPoupanca = class(TConta)
    procedure Sacar(AValor: Double); override;
  end;

implementation

uses
  uExceptions;

{ TContaPoupanca }

procedure TContaPoupanca.Sacar(AValor: Double);
begin
  if (Saldo - AValor >= 0) then
    inherited
  else
    raise ESaldoInsuficiente.Create('Saldo insuficiente');
end;

end.