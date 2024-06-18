# Commercial Workflow

## Proposito:
Em uma empresa de prestação de serviços, a preparação de propostas é um processo trabalhoso que pode demorar muito e impactar negativamente o atendimento às necessidades do cliente, além de resultar em possíveis perdas de oportunidades. A aplicação tem como propósito organizar e agilizar o processo de confecção de propostas, passando pelos devidos passos e possibilitando a escolha de um template que melhor se enquadre para o cliente, onde os funcionários atuam em seus passos do fluxo de acordo com a função atribuída a eles no processo.

A aplicação automatiza tarefas repetitivas, como envio de email aos clientes, com a proposta/contrato em anexo, envio de email ao cliente solicitando uma posição(aceite, recusa, revisão), integra-se com sistemas de CRM para evitar duplicação de trabalho e melhorar a eficiência. Além disso, desenvolve relatórios detalhados sobre o desempenho dos funcionários e a eficiência dos steps, utilizando ferramentas de análise de dados para identificar tendências e insights. Com uma interface intuitiva e fácil de usar, a aplicação permite a personalização dos templates conforme as necessidades específicas dos clientes.

O sistema conta com um controle de acesso robusto e segurança de dados, garantindo que apenas funcionários autorizados possam acessar, editar ou aprovar propostas. Um sistema de feedback promove um ciclo contínuo de melhorias na aplicação. Além disso, são oferecidos treinamentos regulares e suporte técnico ágil para garantir que os funcionários utilizem a aplicação de forma eficiente e que quaisquer problemas sejam resolvidos rapidamente.

## Funcionalidades
O sistema dispõe das seguintes funcionalidades:
1. Cadastro e gerenciamento de clientes;
2. Cadastro e gerenciamento de templates de propostas(textos fixo, textos variáveis, ordem de textos dentro da proposta, formatação) através de tags html registradas em tabelas;
3. Cadastro e gerenciamento de Funcionários(dados do Funcionário, departamento, funções/papel/responsabilidade), podendo o funcionário ter uma ou mais funções por Step(passo em que a proposta/contrato se encontra no fluxo);
4. Cadastro e gerenciamento de Leads("oportunidades¨necessidade do cliente,registro da oportunidade);
5. Cadastro e gerenciamento de propostas(criação, desenvolvimento, aprovações, editores e visualizadores, envio ao cliente);
6. Dashboards de performance do time, funil de "vendas", tempo médio para cada fase da proposta,fatores mais votados para aceite e recusa de propostas, entre outros;
7. APIs de integração com sistemas de CRM;
8. Anonimização de dados sensiveis por papéis e funções;
9. Envio de enmails automatizado, e com programação de cobrança de posição em relação ao contrato/proposta;

## Tabelas da aplicação
Obs. Abaixo estão os nomes das tabelas, suas chaves primárias e suas chaves estrangeiras, estando descritas no seguinte formato:
 - Tabela: Nome lógico da tabela 
   - PK: Chave primária
   - FK: Chaves estrangeiras

Tabelas e suas PKs e FKs:
 - Tabela: País
   - PK:
     - Código País
 - Tabela: Estado
   - PK:
     - Código Estado
     - Código País(FK)
 - Tabela: Cidade
   - PK: 
     - Código Cidade
     - Código Estado(FK)
     - Código País(FK)
 - Tabela: Logradouro
   - PK: 
     - Código Logradouro
     - Código Cidade(FK)
     - Código Estado(FK)
     - Código País(FK)
 - Tabela: Endereço
   - PK: 
     - Código Endereço
   - FK:
     - Código Logradouro
     - Código Cidade
     - Código Estado
     - Código País
 - Tabela: Setor de Atuação
   - PK: 
     - Código Setor de Atuação
 - Tabela: Segmento de Mercado
   - PK: 
     - Código Segmento de Mercado
     - Código Setor de Atuação (FK)
 - Tabela: Ramo de Atividade
   - PK: 
     - Código Ramo de Atividade
     - Código Segmento de Mercado(FK)
     - Código Setor de Atuação(FK)
 - Tabela: Subcategoria de Serviço
   - PK: 
     - Código Subcategoria de Serviço
     - Código Ramo de Atividade(FK)
     - Código Segmento de Mercado(FK)
     - Código Setor de Atuação(FK)
 - Tabela: Cliente
   - PK:
     - Código do Cliente
   - FK:
     - Código Subcategoria de Serviço
     - Código Ramo de Atividade
     - Código Segmento de Mercado
     - Código Setor de Atuação
     - Código Endereço
 - Tabela: Funcionários
   - PK: 
     - Código Funcionário
 - Tabela: Canal Comunicação
   - PK:
     - Código Canal Comunicaçao
 - Tabela: Funcionário x Canal Comunicaçao
   - PK: 
     - Código Canal Funcionário(Auto Incremental)
   - FK:
     - Código Funcionário
     - Código Canal Comunicaçao
 - Tabela: Função
   - PK: 
     - Código Função
 - Tabela: Step
   - PK: 
     - Código Step
 - Tabela: Funcionário x Função x Step
   - PK: 
     - Código Funcionário(FK)
     - Código Função(FK)
     - Código Step(FK)
 - Tabela: Atributo Variáveis
   - PK: 
     - Código Atributos Variáveis
 - Tabela: Templates
   - PK: 
     - Código Template
 - Tabela: Template x Atributos Variáveis
   - PK: 
     - Código Template(FK)
     - Código Atributos Variáveis(FK)
 - Tabela: Atributos Fixos
   - PK: 
     - Código Atributos Fixos
 - Tabela: Template x Atributos Fixos
   - PK: 
     - Código Template(FK)
     - Código Atributos Fixos(FK)
 - Tabela: Template x Step
   - PK: 
     - Código Template(FK)
     - Código Step(FK)
 - Tabela: Lead
   - PK: 
     - Código Lead
   - FK:
     - Código Cliente
 - Tabela: Propostas
   - PK: 
     - Código Proposta
     - Código Versão
   - FK:
     - Código Lead
     - Código Template
     - Código Step
 - Tabela: Contratos
   - PK: 
     - Código Contrato
     - Código Versão
   - FK:
     - Código Cliente
     - Código Template
     - Código Step
 - Tabela: Observações
   - PK: 
     - Código Observação(Auto Incremental)
   - FK:
     - Código Cliente (preenchidoo quando a observação for referente ao Cliente)
     - Código Funcionário (preenchidoo quando a observação for referente ao Funcionário)
     - Código Lead (preenchidoo quando a observação for referente ao Lead)
     - Código Contrato (preenchidoo quando a observação for referente ao Contrato)
     - Código Proposta (preenchidoo quando a observação for referente à Proposta)
     - Código Versão (preenchidoo quando a observação for referente ao Contrato ou à Proposta)
 - Tabela: Tipo de Interação
   - PK:
     - Código Tipo de Interação
 - Tabela: Interação
   - PK:
     - Código Interação
     - Código Cliente
   - FK:
     - Código Funcionário
     - Código Tipo de Interação (e-mail, ligação, reunião, etc.)
 - Tabela: Tipo de Feedback
   - PK: Código Tipo de Feedback
 - Tabela: Feedback
   - PK:
     - Código Feedback
   - FK:
     - Código Cliente
     - Código Funcionário
     - Código Proposta (se aplicável)
     - Código Contrato (se aplicável)
     - Código Interação (se aplicável)
     - Código Tipo de Feedback (positivo, negativo, sugestão, etc.)


## Detalhamento das Funcionalidades

### Cadastro e gerenciamento de clientes;


### Cadastro e gerenciamento de templates de propostas(textos padrões, ordem de textos dentro da proposta, formatação) através de tags hmtl;


### Cadastro e gerenciamento de usuários(dados do usuário, departamento, funções/papel/responsabilidade), podendo o usuário ter uma ou mais função, mas em um unico departamento;


### Cadastro e gerenciamento de oportunidades(necessidade do cliente,registro da oportunidade);


### Cadastro e gerenciamento de propostas(criação, desenvolvimento, envio ao cliente);

