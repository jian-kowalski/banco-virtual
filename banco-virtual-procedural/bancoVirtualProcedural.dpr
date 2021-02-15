program bancoVirtualProcedural;

uses
  Vcl.Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
