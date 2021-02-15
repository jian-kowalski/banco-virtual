unit uContaFabrica;

interface

uses
  System.SysUtils, uConta, uEnumConta;

type
  TFabrica = class
    class function CriarConta(AoTipoConta: tTipoConta): TConta;
  end;

implementation

uses
  uContaCorrente, uContaPupanca, uContaCartao;

{ TFabrica }

class function TFabrica.CriarConta(AoTipoConta: tTipoConta): TConta;
begin
  case AoTipoConta of
    ttContaCorrente: Exit(TContaCorrente.Create);
    ttContaPoupacao: Exit(TContaPoupanca.Create);
    ttContaCartao: Exit(TContaCartao.Create);
    else
      Exit(TContaCorrente.Create);
  end;
end;

end.
