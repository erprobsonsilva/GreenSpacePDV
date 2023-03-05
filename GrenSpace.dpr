program GrenSpace;

uses
  Vcl.Forms,
  UDM in 'UDM.pas' {dm},
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UProduto in 'UProduto.pas' {FProduto},
  UEntidade in 'UEntidade.pas' {FEntidade},
  UMovimentoEntrada in 'UMovimentoEntrada.pas' {FMovimentoEntrada},
  UMovimentoVenda in 'UMovimentoVenda.pas' {FMovimentoVenda},
  URelatorio in 'URelatorio.pas' {FRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.