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

{ TCliente }

constructor TCliente.Create(ANome: String);
begin
  Self.Nome := ANome;
end;

end.