unit uConta;

interface

uses
  uExceptions;

type
  TConta = class abstract(TObject)
  strict protected
    procedure TestarLimiteDiario(AValor: Double);
  public
    Saldo: Double;
    procedure Sacar(AValor: Double); virtual;
    procedure Depositar(AValor: Double); virtual;
  end;

implementation

procedure TConta.Depositar(AValor: Double);
begin
  TestarLimiteDiario(AValor); // introduce accertion pattern
  Saldo := Saldo + AValor;
end;

procedure TConta.Sacar(AValor: Double);
begin
  TestarLimiteDiario(AValor); // introduce accertion pattern
  Saldo := Saldo - AValor;
end;

procedure TConta.TestarLimiteDiario(AValor: Double);
begin
  if AValor >= 1000 then
    raise ELimiteUltrapassado.Create('Limite / transação max 1000');
end;

end.