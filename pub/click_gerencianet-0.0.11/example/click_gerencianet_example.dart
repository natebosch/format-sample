import 'package:click_gerencianet/click_gerencianet.dart';
import 'package:click_gerencianet/src/gerencianet/apis/abertura_contas/gerencianet_abertura_contas.dart';
import 'package:click_gerencianet/src/gerencianet/apis/abertura_contas/models/abertura_contas_cliente_final_model.dart';
import 'package:click_gerencianet/src/gerencianet/apis/abertura_contas/models/abertura_contas_endereco_model.dart';
import 'package:click_gerencianet/src/gerencianet/apis/abertura_contas/models/abertura_contas_pessoa_juridica_model.dart';

Future<void> main() async {
  var gn = GerencianetRestClient(
    config: GerencianetConfigurationModel(
      chavePix: 'susi@clicksi.com.br',
      clientId: 'Client_Id',
      clientSecret: 'Client_Secret',
      pathCertificadoCRT: 'pix.crt.pem',
      pathCertificadoKEY: 'pix.key.pem',
      certificadoPassword: "1234",
      pixRecebedor: 'SUSELEI',
      cidade: 'PARATI',
      showLogDio: true,
    ),
  );

  print(
    await gn.novoPixComRegistro(
      valor: 2,
      idFP: 2,
      idDocumento: 2,
      descricao: 'TESTE DART COM PARTNER TOKEN',
    ),
  );

  //print(await gn.gerarPixCopiaCola(descricao1: 'pagamento teste', valor: 100, txId: '1410'));

//  print('Consultando se o pix txId 1410 foi pago...');
//  final pix = await gn.checkPayment(
//      txId: '001410', start: DateTime.now().firstDayOfMonth(), end: DateTime.now().lastSecondOfDay);
//  final pix = await gn.checkPayment(
//      txId: '001410', start: DateTime.now().add(Duration(minutes: -20)), end: DateTime.now().add(Duration(minutes: 5)));

//  if (pix == null) {
//    print('o pagamento não foi encontrado');
//  } else {
//    print(pix.toString());
//  }

  //print('testando...: ${await gn.auth().get('/v2/pix?inicio=2023-04-10T00:00:00Z&fim=2023-04-14T23:59:59Z')}');

  //! API Abertura de contas
  // final result = await GerencianetAberturaContas(
  //   restClient: gn,
  //   pessoaJuridica: AberturaContasPessoaJuridicaModel(
  //     clienteFinal: AberturaContasClienteFinalModel(
  //       cpf: '16079813866',
  //       nomeCompleto: 'nomeCompleto',
  //       dataNacimento: '23/06/1982',
  //       nomeMae: 'nomeMae',
  //       celular: 'celular',
  //       email: 'email',
  //       cnpj: 'cnpj',
  //       razaoSocial: 'razaoSocial',
  //       endereco: AberturaContasEnderecoModel(
  //         cep: 'cep',
  //         estado: 'estado',
  //         cidade: 'cidade',
  //         bairro: 'bairro',
  //         logradouro: 'logradouro',
  //         numero: 'numero',
  //         complemento: 'complemento',
  //       ),
  //     ),
  //   ),
  // ).abrirConta();
  // print(result.toString());
}
