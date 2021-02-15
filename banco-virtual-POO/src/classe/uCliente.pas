unit uCliente;

interface

uses
  uConta;

type
  TCliente = class(TObject)
    Nome: String;
    Conta: TConta;
    constructor Create(ANome: String);
  end;

implementation

uses
  System.SysUtils, uExceptions;

{ TCliente }

constructor TCliente.Create(ANome: String);
begin
  Self.Nome := ANome;
  if Self.Nome.IsEmpty then
    raise ENomeDaPessoaObrigatorio.Create('Nome do correntista é obrigatório');
end;

end.