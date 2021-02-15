program bancoVirtualPOO;

uses
  Vcl.Forms,
  uExceptions in 'src\exception\uExceptions.pas',
  uCliente in 'src\classe\uCliente.pas',
  uConta in 'src\classe\uConta.pas',
  uContaCartao in 'src\classe\uContaCartao.pas',
  uContaCorrente in 'src\classe\uContaCorrente.pas',
  uContaFabrica in 'src\classe\uContaFabrica.pas',
  uContaPupanca in 'src\classe\uContaPupanca.pas',
  uFormPrincipal in 'src\view\uFormPrincipal.pas' {FormPrincipal},
  uEnumConta in 'src\enum\uEnumConta.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
