unit uContaCartao;

interface

uses
  uConta;

type
  TContaCartao = class(TConta)
    procedure Depositar(AValor: Double); override;
  end;

implementation

uses
  uExceptions;

{ TContaCartao }

procedure TContaCartao.Depositar(AValor: Double);
begin
  raise EDepositoNaoPermitido.Create('Não é permitido depositar no cartão');
end;

end.