unit uExceptions;

interface

uses
  System.SysUtils;

type
  ESaldoInsuficiente = class(Exception)
  end;

  ELimiteUltrapassado = class(Exception)
  end;

  EDepositoNaoPermitido = class(Exception)
  end;

  ENomeDaPessoaObrigatorio = class(Exception)
  end;

implementation

end.