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
  raise EDepositoNaoPermitido.Create('N�o � permitido depositar no cart�o');
end;

end.