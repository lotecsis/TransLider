program TransLider;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDmFire in 'UDmFire.pas' {DmFire: TDataModule},
  UCadMarcas in 'UCadMarcas.pas' {FCadMarcas},
  UCadModelos in 'UCadModelos.pas' {FCadModelos},
  UCadMotoristas in 'UCadMotoristas.pas' {FCadMotoristas},
  UConsMotorista in 'UConsMotorista.pas' {FConsMotorista},
  UCadFornecedor in 'UCadFornecedor.pas' {FCadFornecedor},
  UConsFornecedor in 'UConsFornecedor.pas' {FConsFornecedor},
  UCadVeiculo in 'UCadVeiculo.pas' {FCadVeiculo},
  UConsCavalo in 'UConsCavalo.pas' {FConsCavalo},
  UTirarFotoAluno in 'UTirarFotoAluno.pas' {FTirarFotoAluno},
  UConsVeiculo in 'UConsVeiculo.pas' {FConsVeiculo},
  UCadServico in 'UCadServico.pas' {FCadServico},
  UConsServico in 'UConsServico.pas' {FConsServico},
  ULancaManutencao in 'ULancaManutencao.pas' {FLancaManutencao},
  UConsServicoLancaManut in 'UConsServicoLancaManut.pas' {FConsServicoLancaManut},
  URelacaoManutencoes in 'URelacaoManutencoes.pas' {FRelacaoManutencoes},
  UAlteraOrdemServico in 'UAlteraOrdemServico.pas' {FAlteraOrdemServico},
  UEntradaSaidaVeiculos in 'UEntradaSaidaVeiculos.pas' {FEntradaSaidaVeiculos},
  UAbastecimento_Viagem in 'UAbastecimento_Viagem.pas' {FAbastecimento_Viagem},
  URelacaoEntrada_Saida in 'URelacaoEntrada_Saida.pas' {FRelacaoEntrada_Saida},
  UAlteraEntrada_Saida in 'UAlteraEntrada_Saida.pas' {FAlteraEntrada_Saida},
  URelacaoManutencoesPeriodicas in 'URelacaoManutencoesPeriodicas.pas' {FRelacaoManutencoesPeriodicas},
  UInfracoesCad in 'UInfracoesCad.pas' {FInfracoesCad},
  UConsInfracoes in 'UConsInfracoes.pas' {FConsInfracoes},
  UInfracoesMov in 'UInfracoesMov.pas' {FInfracoesMov},
  UConsInfracoesMov in 'UConsInfracoesMov.pas' {FConsInfracoesMov},
  UInfracoesIdentificar in 'UInfracoesIdentificar.pas' {FInfracoesIdentificar},
  UVencimentoCNH in 'UVencimentoCNH.pas' {FVencimentoCNH},
  UResumoGeral in 'UResumoGeral.pas' {FResumoGeral},
  UCadUsuarios in 'UCadUsuarios.pas' {FCadUsuarios},
  ULogin in 'ULogin.pas' {FLogin},
  UVeiculosMonitorar in 'UVeiculosMonitorar.pas' {FVeiculosMonitorar},
  ULogMonitoramentoVeiculos in 'ULogMonitoramentoVeiculos.pas' {FLogMonitoramentoVeiculos},
  UTanqueCombustivel in 'UTanqueCombustivel.pas' {FTanqueCombustivel},
  UEntradaVeicObsMot in 'UEntradaVeicObsMot.pas' {FEntradaVeicObsMot},
  UDespesasViagem in 'UDespesasViagem.pas' {FDespesasViagem},
  EditTunning in 'EditTunning.pas',
  UCustoAdicionalKm in 'UCustoAdicionalKm.pas' {FCustoAdicionalKm},
  UCustoKm in 'UCustoKm.pas' {FCustoKm},
  URelacaoComissoes in 'URelacaoComissoes.pas' {FRelacaoComissoes},
  UDmOra in 'UDmOra.pas' {DmOra: TDataModule},
  UCargasComissao in 'UCargasComissao.pas' {FCargasComissao},
  URelacaoCargas in 'URelacaoCargas.pas' {FRelacaoCargas},
  UCadCargas in 'UCadCargas.pas' {FCadCargas},
  UValidaChave in 'UValidaChave.pas' {FValidaChave},
  UComissaoPorFrete in 'UComissaoPorFrete.pas' {FComissaoPorFrete},
  UDiasTrabalhados in 'UDiasTrabalhados.pas' {FDiasTrabalhados},
  ULancarHoras_Trab in 'ULancarHoras_Trab.pas' {FLancarHoras_Trab},
  UDiasTrabPorHora in 'UDiasTrabPorHora.pas' {x};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'TransLider';
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDmFire, DmFire);
  Application.CreateForm(TFRelacaoCargas, FRelacaoCargas);
  Application.CreateForm(TFCadCargas, FCadCargas);
  Application.CreateForm(TFValidaChave, FValidaChave);
  Application.CreateForm(TFComissaoPorFrete, FComissaoPorFrete);
  Application.CreateForm(TDmOra, DmOra);
  Application.CreateForm(TFDiasTrabalhados, FDiasTrabalhados);
  Application.CreateForm(TFLancarHoras_Trab, FLancarHoras_Trab);
  Application.CreateForm(Tx, x);
  Application.Run;
end.
