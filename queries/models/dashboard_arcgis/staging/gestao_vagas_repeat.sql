SELECT
  objectid,
  globalid,
  repeat_nome_usuario,
  repeat_nome_social,
  SAFE.PARSE_DATE('%d/%m/%Y', repeat_data_nascimento) AS repeat_data_nascimento,
  repeat_idade,
  repeat_faixa_etaria,
  repeat_cpf,
  repeat_nome_mae,
  repeat_nome_pai,
  
  CASE 
   WHEN repeat_cor_etnia = 'parda' THEN 'Parda'
   WHEN repeat_cor_etnia = 'branca' THEN 'Branca'
   WHEN repeat_cor_etnia = 'preta' THEN 'Preta'
   WHEN repeat_cor_etnia = 'amarela' THEN 'Amarela'
   WHEN repeat_cor_etnia = 'indígena' THEN 'Indígena'
   WHEN repeat_cor_etnia = 'ns_nr' THEN 'NS/NR'
   ELSE repeat_cor_etnia
   END AS repeat_cor_etnia_tratada,

  CASE
   WHEN repeat_sexo = 'masculino' THEN 'Masculino'
   WHEN repeat_sexo = 'feminino' THEN 'Feminino'
   WHEN repeat_sexo = 'intersexo' THEN 'Intersexo'
   WHEN repeat_sexo = 'ns_nr' THEN 'NS/NR'
   ELSE repeat_sexo
   END AS repeat_sexo_tratada,

  CASE
   WHEN repeat_local_nascimento = 'rio_de_janeiro' THEN 'Rio de Janeiro'
   WHEN repeat_local_nascimento = 'outros_estados' THEN 'Outros Estados'
   WHEN repeat_local_nascimento = 'outro_pais' THEN 'Outro País'
   WHEN repeat_local_nascimento = 'ns_nr' THEN 'NS/NR'
   ELSE repeat_local_nascimento
   END AS repeat_local_nascimento_tratada,

  repeat_situacao_abordagem,

  CASE
   WHEN motivo_nao_abord = 'DETERMINAÇÃO JUDICIAL DA JUSTIÇA ESTADUAL' THEN 'Determinação judicial da Justiça Estadual'
   WHEN motivo_nao_abord = 'DETERMINAÇÃO JUDICIAL DA JUSTIÇA FEDERAL' THEN 'Determinação judicial da Justiça Federal'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DO MINISTÉRIO PÚBLICO ESTADUAL' THEN 'Solicitação do Ministério Público Estadual'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DO MINISTÉRIO PÚBLICO FEDERAL' THEN 'Solicitação do Ministério Público Federal'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DA DEFENSORIA PÚBLICA ESTADUAL' THEN 'Solicitação da Defensoria Pública Estadual'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DA DEFENSORIA PÚBLICA FEDERAL' THEN 'Solicitação da Defensoria Pública Federal'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DA POLÍCIA MILITAR RJ' THEN 'Solicitação da Política Militar RJ'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DA POLÍCIA CIVIL RJ' THEN 'Solicitação da Polícia Civil RJ'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DA POLÍCIA FEDERAL' THEN 'Solicitação da Polícia Federal'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DA GUARDA MUNICIPAL RIO' THEN 'Solicitação da Guarda Municipal Rio'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DA SUBPREFEITURA RIO' THEN 'Solicitação da Subprefeitura Rio'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DE UNIDADE DE SAÚDE MUNICIPAL – SMS/RIO' THEN 'Solicitação de Unidade de Saúde Municipal - SMS/RIO'
   WHEN motivo_nao_abord = 'DSOLICITAÇÃO DE UNIDADE DE SAÚDE ESTADUAL – SES/RIO' THEN 'Solicitação de Unidade de Saúde Estadual - SES/RIO'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DE UNIDADE DE SAÚDE FEDERAL' THEN 'Solicitação de Unidade de Saúde Federal'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DO CENTRO DE ATENÇÃO PSICOSOCIAL – CAPS' THEN 'Solicitação do Centro de Atenção Psicosocial- CAPS'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DE HOSPITAL PSIQUIÁTRICO MUNICIPAL' THEN 'Solicitação de Hospital Psiquiátrico Municipal'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DE HOSPITAL PSIQUIÁTRICO ESTADUAL' THEN 'Solicitação de Hospital Psiquiátrico Estadual'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DE HOSPITAL PSIQUIÁTRICO FEDERAL' THEN 'Solicitação de Hospital Psiquiátrico Federal'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DE ENTIDADE REGISTRADA NO CONSELHO MUNICIPAL DE ASSISTÊNCIA SOCIAL' THEN 'Solicitação de entidade registrada no Conselho Municipal de Assistência Social'
   WHEN motivo_nao_abord = 'SOLICITAÇÃO DO PRÓPRIO USUÁRIO' THEN 'Solicitação do próprio usuário'
   WHEN motivo_nao_abord = 'MIGRAÇÃO GDADOS' THEN 'Migração GDADOS'
   WHEN motivo_nao_abord = 'TRANSFERÊNCIA ENTRE UNIDADES' THEN 'Transferência entre Unidades'
   WHEN motivo_nao_abord = 'TRANSFERÊNCIA ENTRE UNIDADES FORA DA REDE' THEN 'Transferência entre Unidades fora da rede'
   ELSE motivo_nao_abord
   END AS motivo_nao_abord_tratada,

  data_preenc_repeat,

  CASE
   WHEN tipo_registro = 'entrada' THEN 'Entrada'
   WHEN tipo_registro = 'saida' THEN 'Saída'
   ELSE tipo_registro
   END AS tipo_registro_tratada,
  
  situacao_usuario_repeat,

  CASE
   WHEN unidade_resp_reserva = 'CREAS Janete Clair' THEN 'Creas Janete Clair'
   WHEN unidade_resp_reserva = 'CREAS Maria Lina de Castro Lima' THEN 'Creas Maria Lina De Castro Lima'
   WHEN unidade_resp_reserva = 'CREAS Daniela Perez' THEN 'Creas Daniela Perez'
   WHEN unidade_resp_reserva = 'CREAS Stella Maris' THEN 'Creas Stella Maris'
   WHEN unidade_resp_reserva = 'CREAS Nélson Carneiro' THEN 'Creas Nelson Carneiro'
   WHEN unidade_resp_reserva = 'CREAS Padre Guilherme Decaminada' THEN 'Creas Padre Guilherme Decaminada'
   WHEN unidade_resp_reserva = 'CREAS Professora Márcia Lopes' THEN 'Creas Professora Márcia Lopes'
   WHEN unidade_resp_reserva = 'CREAS Professora Aldaíza Sposati' THEN 'Creas Professora Aldaíza Sposati'
   WHEN unidade_resp_reserva = 'CREAS João Hélio Fernandes Vieites' THEN 'Creas João Hélio Fernandes Vieites'
   WHEN unidade_resp_reserva = 'CREAS Wanda Engel Aduan' THEN 'Creas Wanda Engel Aduan'
   WHEN unidade_resp_reserva = 'CREAS Zilda Arns Neumann' THEN 'Creas Zilda Arns Neumann'
   WHEN unidade_resp_reserva = 'CREAS Nelson Carneiro' THEN 'Creas Nelson Carneiro'
   WHEN unidade_resp_reserva = 'CREAS João Manoel Monteiro' THEN 'Creas João Manoel Monteiro'
   WHEN unidade_resp_reserva = 'CREAS Simone de Beauvoir' THEN 'Creas Simone de Beauvoir'
   WHEN unidade_resp_reserva = 'CREAS Arlindo Rodrigues' THEN 'Creas Arlindo Rodrigues'
   WHEN unidade_resp_reserva = 'EQUIPE 24H (ESPECIALIZADA)' THEN 'Equipe 24H'
   WHEN unidade_resp_reserva = 'PAR' THEN 'PAR'
   WHEN unidade_resp_reserva = 'GDADOS' THEN 'GDADOS'
   WHEN unidade_resp_reserva = 'N/A' THEN 'N/A'
   WHEN unidade_resp_reserva = 'EQUIPAMENTO' THEN 'Equipamento'
   ELSE unidade_resp_reserva
   END AS unidade_resp_reserva_tratada,

  CASE
   WHEN tipo_equip = 'albergue' THEN 'Albergue'
   WHEN tipo_equip = 'central_recepcao' THEN 'Central de Recepção'
   WHEN tipo_equip = 'comunidade_terapeutica' THEN 'Comunidade Terapêutica'
   WHEN tipo_equip = 'urs' THEN 'URS'
   WHEN tipo_equip = 'rio_acolhedor' THEN 'Rio Acolhedor'
   WHEN tipo_equip = 'abrigo' THEN 'ABRIGO (Norte Shopping)'
   WHEN tipo_equip = 'treinamento' THEN 'Treinamento'
   ELSE tipo_equip
   END AS tipo_equip_tratada,

  CASE
   WHEN unidade_encaminhamento = 'ALBERGUE HERBERT DE SOUZA (BETINHO)' THEN 'Albergue Herbert de Souza (Betinho)'
   WHEN unidade_encaminhamento = 'ALBERGUE DERCY GONÇALVES' THEN 'Albergue Dercy Gonçalves'
   WHEN unidade_encaminhamento = 'ALBERGUE DERCY GONÇALVES (FEMININO)' THEN 'Albergue Dercy Gonçalves (Feminino)'
   WHEN unidade_encaminhamento = 'ALBERGUE DERCY GONÇALVES (MASCULINO)' THEN 'Albergue Dercy Gonçalves (Masculino)'
   WHEN unidade_encaminhamento = 'ALBERGUE DAVID MIRANDA' THEN 'Albergue David Miranda'
   WHEN unidade_encaminhamento = 'ALBERGUE MARTIN LUTHER KING JR' THEN 'Albergue Martin Luther King Jr'
   WHEN unidade_encaminhamento = 'ALBERGUE NISE DA SILVEIRA' THEN 'Albergue Nise Da Silveira'
   WHEN unidade_encaminhamento = 'ALBERGUE ALFONSO LAVALLE' THEN 'Albergue Alfonso Lavalle'
   WHEN unidade_encaminhamento = 'CRAF TOM JOBIM' THEN 'Craf Tom Jobim'
   WHEN unidade_encaminhamento = 'CRAF TOM JOBIM (FEMININO)' THEN 'Craf Tom Jobim (Feminino)'
   WHEN unidade_encaminhamento = 'CRAF TOM JOBIM (FAMÍLIA)' THEN 'Craf Tom Jobim (Família)'
   WHEN unidade_encaminhamento = 'CRI CARLOS PORTELA' THEN 'Cri Carlos Portela'
   WHEN unidade_encaminhamento = 'CRI CARLOS PORTELA (FEMININO)' THEN 'Cri Carlos Portela (Feminino)'
   WHEN unidade_encaminhamento = 'URS HAROLDO COSTA' THEN 'Urs Haroldo Costa'
   WHEN unidade_encaminhamento = 'URS HAROLDO COSTA (IDOSO)' THEN 'Urs Haroldo Costa (Idoso)'
   WHEN unidade_encaminhamento = 'URS HAROLDO COSTA (EMERGENCIAL)' THEN 'Urs Haroldo Costa (Emergencial)'
   WHEN unidade_encaminhamento = 'URS ILHA DO GOVERNADOR' THEN 'Urs Ilha Do Governador'
   WHEN unidade_encaminhamento = 'URS IRMÃ DULCE' THEN 'Urs Irmã Dulce'
   WHEN unidade_encaminhamento = 'URS MARIA TEREZA VIEIRA' THEN 'Urs Maria Tereza Vieira'
   WHEN unidade_encaminhamento = 'URS REALENGO' THEN 'Urs Realengo'
   WHEN unidade_encaminhamento = 'URS DINA SFAT' THEN 'Urs Dina Sfat'
   WHEN unidade_encaminhamento = 'URS MARIA VIEIRA BAZANI' THEN 'Urs Maria Vieira Bazani'
   WHEN unidade_encaminhamento = 'URS PROFESSORA NILDA NEY' THEN 'Urs Professora Nilda Ney'
   WHEN unidade_encaminhamento = 'RIO ACOLHEDOR (ARCOS DA LAPA)' THEN 'Rio Acolhedor (Arcos Da Lapa)'
   WHEN unidade_encaminhamento = 'RIO ACOLHEDOR (CRISTO REDENTOR)' THEN 'Rio Acolhedor (Cristo Redentor)'
   WHEN unidade_encaminhamento = 'RIO ACOLHEDOR (MARACANÃ)' THEN 'Rio Acolhedor (Maracanã)'
   WHEN unidade_encaminhamento = 'RIO ACOLHEDOR (PÃO DE AÇÚCAR)' THEN 'Rio Acolhedor (Pão De Açúcar)'
   WHEN unidade_encaminhamento = 'RIO ACOLHEDOR (PARQUE MADUREIRA)' THEN 'Rio Acolhedor (Parque Madureira)'
   WHEN unidade_encaminhamento = 'RIO ACOLHEDOR (PRAÇA MAUÁ)' THEN 'Rio Acolhedor (Praça Mauá)'
   WHEN unidade_encaminhamento = 'RIO ACOLHEDOR (PRAÇA XV)' THEN 'Rio Acolhedor (Praça Xv)'
   WHEN unidade_encaminhamento = 'RIO ACOLHEDOR (QUINTA DA BOA VISTA)' THEN 'Rio Acolhedor (Quinta Da Boa Vista)'
   WHEN unidade_encaminhamento = 'RIO ACOLHEDOR (VAGAS EMERGENCIAIS)' THEN 'Rio Acolhedor (Vagas Emergenciais)'
   WHEN unidade_encaminhamento = 'MARANATHÁ BANGU GUANDU' THEN 'Maranathá Bangu Guandu'
   WHEN unidade_encaminhamento = 'MARANATHÁ LINS' THEN 'Maranathá Lins'
   WHEN unidade_encaminhamento = 'MARANATHÁ MADUREIRA' THEN 'Maranathá Madureira'
   WHEN unidade_encaminhamento = 'MARANATHÁ PADRE MIGUEL' THEN 'Maranathá Padre Miguel'
   WHEN unidade_encaminhamento = 'MARANATHÁ VILA KENNEDY' THEN 'Maranathá Vila Kennedy'
   WHEN unidade_encaminhamento = 'MARCA DE CRISTO' THEN 'Marca De Cristo'
   WHEN unidade_encaminhamento = 'ABRIGO (Norte Shopping)' THEN 'Abrigo (Norte Shopping)'
   WHEN unidade_encaminhamento = 'TREINAMENTO' THEN 'Treinamento'
   ELSE unidade_encaminhamento
   END AS unidade_encaminhamento_tratada,

  data_acolhimento,
  dia_num_data_acolhimento,
  dia_abrev_data_acolhimento,
  mes_num_data_acolhimento,
  mes_abrev_data_acolhimento,
  ano_num_data_acolhimento,
  ano_mes_data_acolhimento,
  nome_resp_encaminhamento,
  cpf_resp_encaminhamento,

  CASE
   WHEN unidade_confirm = 'ALBERGUE HERBERT DE SOUZA (BETINHO)' THEN 'Albergue Herbert de Souza (Betinho)'
   WHEN unidade_confirm = 'ALBERGUE DERCY GONÇALVES' THEN 'Albergue Dercy Gonçalves'
   WHEN unidade_confirm = 'ALBERGUE DERCY GONÇALVES (FEMININO)' THEN 'Albergue Dercy Gonçalves (Feminino)'
   WHEN unidade_confirm = 'ALBERGUE DERCY GONÇALVES (MASCULINO)' THEN 'Albergue Dercy Gonçalves (Masculino)'
   WHEN unidade_confirm = 'ALBERGUE DAVID MIRANDA' THEN 'Albergue David Miranda'
   WHEN unidade_confirm = 'ALBERGUE MARTIN LUTHER KING JR' THEN 'Albergue Martin Luther King Jr'
   WHEN unidade_confirm = 'ALBERGUE NISE DA SILVEIRA' THEN 'Albergue Nise Da Silveira'
   WHEN unidade_confirm = 'ALBERGUE ALFONSO LAVALLE' THEN 'Albergue Alfonso Lavalle'
   WHEN unidade_confirm = 'CRAF TOM JOBIM' THEN 'Craf Tom Jobim'
   WHEN unidade_confirm = 'CRAF TOM JOBIM (FEMININO)' THEN 'Craf Tom Jobim (Feminino)'
   WHEN unidade_confirm = 'CRAF TOM JOBIM (FAMÍLIA)' THEN 'Craf Tom Jobim (Família)'
   WHEN unidade_confirm = 'CRI CARLOS PORTELA' THEN 'Cri Carlos Portela'
   WHEN unidade_confirm = 'CRI CARLOS PORTELA (FEMININO)' THEN 'Cri Carlos Portela (Feminino)'
   WHEN unidade_confirm = 'URS HAROLDO COSTA' THEN 'Urs Haroldo Costa'
   WHEN unidade_confirm = 'URS HAROLDO COSTA (IDOSO)' THEN 'Urs Haroldo Costa (Idoso)'
   WHEN unidade_confirm = 'URS HAROLDO COSTA (EMERGENCIAL)' THEN 'Urs Haroldo Costa (Emergencial)'
   WHEN unidade_confirm = 'URS ILHA DO GOVERNADOR' THEN 'Urs Ilha Do Governador'
   WHEN unidade_confirm = 'URS IRMÃ DULCE' THEN 'Urs Irmã Dulce'
   WHEN unidade_confirm = 'URS MARIA TEREZA VIEIRA' THEN 'Urs Maria Tereza Vieira'
   WHEN unidade_confirm = 'URS REALENGO' THEN 'Urs Realengo'
   WHEN unidade_confirm = 'URS DINA SFAT' THEN 'Urs Dina Sfat'
   WHEN unidade_confirm = 'URS MARIA VIEIRA BAZANI' THEN 'Urs Maria Vieira Bazani'
   WHEN unidade_confirm = 'URS PROFESSORA NILDA NEY' THEN 'Urs Professora Nilda Ney'
   WHEN unidade_confirm = 'RIO ACOLHEDOR (ARCOS DA LAPA)' THEN 'Rio Acolhedor (Arcos Da Lapa)'
   WHEN unidade_confirm = 'RIO ACOLHEDOR (CRISTO REDENTOR)' THEN 'Rio Acolhedor (Cristo Redentor)'
   WHEN unidade_confirm = 'RIO ACOLHEDOR (MARACANÃ)' THEN 'Rio Acolhedor (Maracanã)'
   WHEN unidade_confirm = 'RIO ACOLHEDOR (PÃO DE AÇÚCAR)' THEN 'Rio Acolhedor (Pão De Açúcar)'
   WHEN unidade_confirm = 'RIO ACOLHEDOR (PARQUE MADUREIRA)' THEN 'Rio Acolhedor (Parque Madureira)'
   WHEN unidade_confirm = 'RIO ACOLHEDOR (PRAÇA MAUÁ)' THEN 'Rio Acolhedor (Praça Mauá)'
   WHEN unidade_confirm = 'RIO ACOLHEDOR (PRAÇA XV)' THEN 'Rio Acolhedor (Praça Xv)'
   WHEN unidade_confirm = 'RIO ACOLHEDOR (QUINTA DA BOA VISTA)' THEN 'Rio Acolhedor (Quinta Da Boa Vista)'
   WHEN unidade_confirm = 'RIO ACOLHEDOR (VAGAS EMERGENCIAIS)' THEN 'Rio Acolhedor (Vagas Emergenciais)'
   WHEN unidade_confirm = 'MARANATHÁ BANGU GUANDU' THEN 'Maranathá Bangu Guandu'
   WHEN unidade_confirm = 'MARANATHÁ LINS' THEN 'Maranathá Lins'
   WHEN unidade_confirm = 'MARANATHÁ MADUREIRA' THEN 'Maranathá Madureira'
   WHEN unidade_confirm = 'MARANATHÁ PADRE MIGUEL' THEN 'Maranathá Padre Miguel'
   WHEN unidade_confirm = 'MARANATHÁ VILA KENNEDY' THEN 'Maranathá Vila Kennedy'
   WHEN unidade_confirm = 'MARCA DE CRISTO' THEN 'Marca De Cristo'
   WHEN unidade_confirm = 'ABRIGO (Norte Shopping)' THEN 'Abrigo (Norte Shopping)'
   WHEN unidade_confirm = 'TREINAMENTO' THEN 'Treinamento'
   ELSE unidade_confirm
   END AS unidade_confirm_tratada,

  CASE
   WHEN confirm_chegada = 'sim' THEN 'Sim'
   WHEN confirm_chegada = 'nao' THEN 'Não'
   ELSE confirm_chegada
   END AS confirm_chegada_tratada,

  data_confirm,
  nome_resp_confirm,
  cpf_resp_confirm,
  observacoes_edicao,
  data_desligamento,
  dia_num_data_desligamento,
  dia_abrev_data_desligamento,
  mes_num_data_desligamento,
  mes_abrev_data_desligamento,
  ano_num_data_desligamento,
  ano_mes_data_desligamento,

  CASE
   WHEN motivo_desligamento = 'DESISTÊNCIA DO ACOLHIMENTO POR CONFLITOS NA UNIDADE' THEN 'Desistência Do Acolhimento Por Conflitos Na Unidade'
   WHEN motivo_desligamento = 'DESISTÊNCIA DO ACOLHIMENTO POR CRISE DE ABSTINÊNCIA DE SUBSTÂNCIAS PSICOATIVAS' THEN 'Desistência Do Acolhimento Por Crise De Abstinência De Substâncias Psicoativas'
   WHEN motivo_desligamento = 'DESISTÊNCIA DO ACOLHIMENTO POR CRÍTICAS A INFRAESTRUTURA OFERECIDA' THEN 'Desistência Do Acolhimento Por Críticas A Infraestrutura Oferecida'
   WHEN motivo_desligamento = 'DESISTÊNCIA DO ACOLHIMENTO POR NÃO ACEITAR AS REGRAS DA UNIDADE' THEN 'Desistência Do Acolhimento Por Não Aceitar As Regras Da Unidade'
   WHEN motivo_desligamento = 'DESISTÊNCIA POR VONTADE PRÓPRIA' THEN 'Desistência Por Vontade Própria'
   WHEN motivo_desligamento = 'MORADIA COM APOIO' THEN 'Moradia Com Apoio'
   WHEN motivo_desligamento = 'REINSERÇÃO ATRAVÉS DO PROJETO DE VOLTA A TERRA NATAL' THEN 'Reinserção Através Do Projeto De Volta A Terra Natal'
   WHEN motivo_desligamento = 'REINSERÇÃO COMUNITÁRIA' THEN 'Reinserção Comunitária'
   WHEN motivo_desligamento = 'REINSERÇÃO FAMILIAR' THEN 'Reinserção Familiar'
   WHEN motivo_desligamento = 'TRANSFERÊNCIA PARA OUTRO ABRIGO' THEN 'Transferência Para Outro Abrigo'
   WHEN motivo_desligamento = 'TRANSFERÊNCIA PARA UNIDADE DE SAÚDE' THEN 'Transferência Para Unidade De Saúde'
   WHEN motivo_desligamento = 'MIGRAÇÃO GDADOS' THEN 'Migração GDADOS'
   ELSE motivo_desligamento
   END AS motivo_desligamento_tradada,

  nome_resp_desligamento,
  cpf_resp_desligamento,
  parentrowid,
  created_user,
  created_date,
  last_edited_user,
  last_edited_date

 FROM rj-smas-dev.arcgis_raw.gestao_vagas_repeat_raw