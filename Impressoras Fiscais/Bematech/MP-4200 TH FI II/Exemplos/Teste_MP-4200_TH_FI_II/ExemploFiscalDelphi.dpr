program ExemploFiscalDelphi;

uses
  Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  SimboloMoeda in 'SimboloMoeda.pas' {FormSimboloMoeda},
  AdicaoAliquota in 'AdicaoAliquota.pas' {FormAdicaoAliquota},
  Totalizador in 'Totalizador.pas' {FormTotalizador},
  NumeroLinhas in 'NumeroLinhas.pas' {FormNumeroLinhas},
  LinhaCupons in 'LinhaCupons.pas' {FormLinhaCupons},
  NomeiaDepartamento in 'NomeiaDepartamento.pas' {FormNomeiaDepartamento},
  ForcaAgulhas in 'ForcaAgulhas.pas' {FormForcaAgulhas},
  UsaCPFDesForma in 'UsaCPFDesForma.pas' {FormUsaCPFDesForma},
  VendeItem in 'VendeItem.pas' {FormVendeItem},
  CancelItemGenerico in 'CancelItemGenerico.pas' {FormCancelItemGenerico},
  VendaPorDepartamento in 'VendaPorDepartamento.pas' {FormVendaPorDepartamento},
  FechaResumido in 'FechaResumido.pas' {FormFechaResumido},
  FechaComAcrecimo in 'FechaComAcrecimo.pas' {FormFechaComAcrecimo},
  IniciaFechamento in 'IniciaFechamento.pas' {FormIniciaFechamento},
  EfetuaFormaPagamento in 'EfetuaFormaPagamento.pas' {FormEfetuaFormaPagamento},
  TerminaFechamento in 'TerminaFechamento.pas' {FormTerminaFechamento},
  EstornoFormaPagamento in 'EstornoFormaPagamento.pas' {FormEstornoFormaPagamento},
  UsaUnidadeMedida in 'UsaUnidadeMedida.pas' {FormUsaUnidadeMedida},
  AumentaDescricaoItem in 'AumentaDescricaoItem.pas' {FormAumentaDescricaoItem},
  MemoriaFiscal in 'MemoriaFiscal.pas' {FormMemoriaFiscal},
  MemoriaFiscalMFD in 'MemoriaFiscalMFD.pas' {FormMemoriaFiscalMFD},
  RelatorioGerencial in 'RelatorioGerencial.pas' {frmRelatorioGerencial},
  Recebimento in 'Recebimento.pas' {FormRecebimento},
  ComprovanteVinculado in 'ComprovanteVinculado.pas' {FormComprovanteVinculado},
  TextoImprimir in 'TextoImprimir.pas' {frmUsaComprovanteNaoFiscalVinculado},
  ImprimeCheque in 'ImprimeCheque.pas' {FormImprimeCheque},
  ProgramaMoeda in 'ProgramaMoeda.pas' {FormProgramaMoeda},
  CidadeFavorecido in 'CidadeFavorecido.pas' {FormCidadeFavorecido},
  ProgramaCaracter in 'ProgramaCaracter.pas' {FormProgramaCaracter},
  AbreCupomRestaurante in 'AbreCupomRestaurante.pas' {FormAbreCupomRestaurante},
  RegistroVendas in 'RegistroVendas.pas' {FormRegistroVendas},
  ConferenciaMesa in 'ConferenciaMesa.pas' {FormConferenciaMesa},
  AbreConferencia in 'AbreConferencia.pas' {FormAbreConferencia},
  FechaConferenciaMesa in 'FechaConferenciaMesa.pas' {FormFechaConferenciaMesa},
  FechaCupom in 'FechaCupom.pas' {FormFechaCupom},
  FechaCupomContaDividida in 'FechaCupomContaDividida.pas' {FormFechaCupomContaDividida},
  TranfItem in 'TranfItem.pas' {FormTranfItem},
  TranfMesa in 'TranfMesa.pas' {FormTranfMesa},
  LeRegVendas in 'LeRegVendas.pas' {FormLeRegVendas},
  AberturaDia in 'AberturaDia.pas' {frmAberturaDoDia},
  FormaPagamento in 'FormaPagamento.pas' {frmEfetuaFormaPagamentoTextoOpcional},
  AbreCupomMFD in 'AbreCupomMFD.pas' {frmAbreCupomMFD},
  CancelamentoAcrescimoDesconto in 'CancelamentoAcrescimoDesconto.pas' {frmCancelamentoAcrescimoDesconto},
  IniciaFechamentoCupomMFD in 'IniciaFechamentoCupomMFD.pas' {frmIniciaFechamentoCupomMFD},
  RetornoValor in 'RetornoValor.pas' {frmRetornoValor},
  InformacaoBalanca in 'InformacaoBalanca.pas' {FormBalanca},
  BemaCarne in 'BemaCarne.pas' {FormCarne},
  DatePecker in 'DatePecker.pas' {FormDatePecker},
  DadosSintegra in 'DadosSintegra.pas' {frmDadosSintegra},
  RelatorioSintegraMFD in 'RelatorioSintegraMFD.pas' {frmRelatorioSintegraMFD},
  UnitDeclaracoes in 'UnitDeclaracoes.pas',
  DownloadMFD in 'DownloadMFD.pas' {frmDownload},
  AtivaDesativaVendaUmaLinha in 'AtivaDesativaVendaUmaLinha.pas' {frmAtivaDesativaVendaUmaLinha},
  TerminaFechamentoCupomMFD in 'TerminaFechamentoCupomMFD.pas' {frmMensagemPromocionalMFD};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmDadosSintegra, frmDadosSintegra);
  Application.CreateForm(TfrmRelatorioGerencial, frmRelatorioGerencial);
  Application.CreateForm(TfrmUsaComprovanteNaoFiscalVinculado, frmUsaComprovanteNaoFiscalVinculado);
  Application.CreateForm(TfrmRelatorioSintegraMFD, frmRelatorioSintegraMFD);
  Application.CreateForm(TfrmAberturaDoDia, frmAberturaDoDia);
  Application.CreateForm(TfrmEfetuaFormaPagamentoTextoOpcional, frmEfetuaFormaPagamentoTextoOpcional);
  Application.CreateForm(TfrmAbreCupomMFD, frmAbreCupomMFD);
  Application.CreateForm(TfrmCancelamentoAcrescimoDesconto, frmCancelamentoAcrescimoDesconto);
  Application.CreateForm(TfrmIniciaFechamentoCupomMFD, frmIniciaFechamentoCupomMFD);
  Application.CreateForm(TfrmRetornoValor, frmRetornoValor);
  Application.CreateForm(TfrmDownload, frmDownload);
  Application.CreateForm(TfrmAtivaDesativaVendaUmaLinha, frmAtivaDesativaVendaUmaLinha);
  Application.CreateForm(TfrmMensagemPromocionalMFD, frmMensagemPromocionalMFD);
  Application.Run;
end.
