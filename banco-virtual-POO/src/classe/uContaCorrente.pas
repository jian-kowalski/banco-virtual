unit uContaCorrente;

interface

uses
  uConta;

type
  TContaCorrente = class(TConta)
    procedure Sacar(AValor: Double); override;
  end;

implementation

uses
  uExceptions;

{ TContaCorrente }

procedure TContaCorrente.Sacar(AValor: Double);
begin
  if (Saldo - AValor >= -500) then
    inherited
  else
    raise ESaldoInsuficiente.Create('Saldo insuficiente');
end;

end.