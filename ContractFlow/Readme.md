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

## Estrutura do projeto
O projeto foi estruturado da seguinte forma: Sistema >> Tipo Aplicação >> Tecnologia >> Aplicação
Com o intuito de que os componentes da arquitetura fiquem organizados, facilitando sua manutenção. O diagrama completo pode ser vizualizado no arquivo [ProjectEstructure.md](./ProjectEstructure.md "Estrutura do projeto")

## Possiveis API's
### <b><i>API's de Clientes</i></b>

## Tabelas da aplicação

<table>
<tr><th> Clientes</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/customers: Obter a lista de todos os clientes.</td></tr>
<tr><td>GET</td><td>/api/customers/{id}: Obter detalhes de um cliente específico.</td></tr>
<tr><td>POST</td><td>/api/customers: Criar um novo cliente.</td></tr>
<tr><td>PUT</td><td>/api/customers/{id}: Atualizar informações de um cliente específico.</td></tr>
<tr><td>DELETE</td><td>/api/customers/{id}: Excluir um cliente.</td></tr>
</table>

<table>
<tr><th>Endereços do Cliente</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/customers/{customer_id}/addresses: Obter a lista de endereços de um cliente.</td></tr>
<tr><td>POST</td><td>/api/customers/{customer_id}/addresses: Adicionar um novo endereço para um cliente.</td></tr>
<tr><td>PUT</td><td>/api/customers/{customer_id}/addresses/{id}: Atualizar um endereço específico de um cliente.</td></tr>
<tr><td>DELETE</td><td>/api/customers/{customer_id}/addresses/{id}: Excluir um endereço específico de um cliente.</td></tr>
</table>

<table>
<tr><th>Contatos do Cliente</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/customers/{customer_id}/contacts: Obter a lista de contatos de um cliente.</td></tr>
<tr><td>POST</td><td>/api/customers/{customer_id}/contacts: Adicionar um novo contato para um cliente.</td></tr>
<tr><td>PUT</td><td>/api/customers/{customer_id}/contacts/{id}: Atualizar um contato específico de um cliente.</td></tr>
<tr><td>DELETE</td><td>/api/customers/{customer_id}/contacts/{id}: Excluir um contato específico de um cliente.</td></tr>
</table>

<table>
<tr><th>Representantes do Cliente</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/customers/{customer_id}/representatives: Obter a lista de representantes de um cliente.</td></tr>
<tr><td>POST</td><td>/api/customers/{customer_id}/representatives: Adicionar um novo representante para um cliente.</td></tr>
<tr><td>PUT</td><td>/api/customers/{customer_id}/representatives/{id}: Atualizar um representante específico de um cliente.</td></tr>
<tr><td>DELETE</td><td>/api/customers/{customer_id}/representatives/{id}: Excluir um representante específico de um cliente.</td></tr>
</table>

### <b><i>Propostas</i></b>
<table>
<tr><th>Propostas</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/proposals: Obter a lista de todas as propostas.</td></tr>
<tr><td>GET</td><td>/api/proposals/{id}: Obter detalhes de uma proposta específica.</td></tr>
<tr><td>POST</td><td>/api/proposals: Criar uma nova proposta.</td></tr>
<tr><td>PUT</td><td>/api/proposals/{id}: Atualizar informações de uma proposta específica.</td></tr>
<tr><td>DELETE</td><td>/api/proposals/{id}: Excluir uma proposta.</td></tr>
</table>

<table>
<tr><th>Aprovações de Propostas</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/proposals/{proposal_id}/approvals: Obter a lista de aprovações de uma proposta.</td></tr>
<tr><td>POST</td><td>/api/proposals/{proposal_id}/approvals: Adicionar uma nova aprovação para uma proposta.</td></tr>
<tr><td>PUT</td><td>/api/proposals/{proposal_id}/approvals/{id}: Atualizar uma aprovação específica de uma proposta.</td></tr>
<tr><td>DELETE</td><td>/api/proposals/{proposal_id}/approvals/{id}: Excluir uma aprovação específica de uma proposta.</td></tr>
</table>

### <b><i>APIs para Templates<i/></b>
<table>
<tr><th>Templates de Propostas</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/templates: Obter a lista de todos os templates de propostas.</td></tr>
<tr><td>GET</td><td>/api/templates/{id}: Obter detalhes de um template específico.</td></tr>
<tr><td>POST</td><td>/api/templates: Criar um novo template.</td></tr>
<tr><td>PUT</td><td>/api/templates/{id}: Atualizar um template específico.</td></tr>
<tr><td>DELETE</td><td>/api/templates/{id}: Excluir um template.</td></tr>
</table>

### <b><i>APIs para Leads</i></b>
<table>
<tr><th>Leads</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/leads: Obter a lista de todos os leads.</td></tr>
<tr><td>GET</td><td>/api/leads/{id}: Obter detalhes de um lead específico.</td></tr>
<tr><td>POST</td><td>/api/leads: Criar um novo lead.</td></tr>
<tr><td>PUT</td><td>/api/leads/{id}: Atualizar informações de um lead específico.</td></tr>
<tr><td>DELETE</td><td>/api/leads/{id}: Excluir um lead.</td></tr>
</table>

### <b><i>APIs para Funcionários</i></b>
<table>
<tr><th>Funcionários</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/employees: Obter a lista de todos os funcionários.</td></tr>
<tr><td>GET</td><td>/api/employees/{id}: Obter detalhes de um funcionário específico.</td></tr>
<tr><td>POST</td><td>/api/employees: Criar um novo funcionário.</td></tr>
<tr><td>PUT</td><td>/api/employees/{id}: Atualizar informações de um funcionário específico.</td></tr>
<tr><td>DELETE</td><td>/api/employees/{id}: Excluir um funcionário.</td></tr>
</table>

<table>
<tr><th>Funções dos Funcionários</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/employees/{employee_id}/roles: Obter a lista de funções de um funcionário.</td></tr>
<tr><td>POST</td><td>/api/employees/{employee_id}/roles: Adicionar uma nova função para um funcionário.</td></tr>
<tr><td>PUT</td><td>/api/employees/{employee_id}/roles/{id}: Atualizar uma função específica de um funcionário.</td></tr>
<tr><td>DELETE</td><td>/api/employees/{employee_id}/roles/{id}: Excluir uma função específica de um funcionário.</td></tr>
</table>

### <b><i>APIs para Feedback e Observações</i></b>
<table>
<tr><th>Feedback</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/feedback: Obter a lista de todos os feedbacks.</td></tr>
<tr><td>GET</td><td>/api/feedback/{id}: Obter detalhes de um feedback específico.</td></tr>
<tr><td>POST</td><td>/api/feedback: Adicionar um novo feedback.</td></tr>
<tr><td>PUT</td><td>/api/feedback/{id}: Atualizar um feedback específico.</td></tr>
<tr><td>DELETE</td><td>/api/feedback/{id}: Excluir um feedback.</td></tr>
</table>


### <b><i>APIs para Relatórios</i></b>
<table>
<tr><th>Relatórios</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/reports: Obter a lista de todos os relatórios.</td></tr>
<tr><td>GET</td><td>/api/reports/{id}: Obter detalhes de um relatório específico.</td></tr>
<tr><td>POST</td><td>/api/reports: Criar um novo relatório.</td></tr>
<tr><td>PUT</td><td>/api/reports/{id}: Atualizar informações de um relatório específico.</td></tr>
<tr><td>DELETE</td><td>/api/reports/{id}: Excluir um relatório.</td></tr>
</table>


### <b><i>APIs para Integração com CRM</i></b>
<table>
<tr><th>Integração com CRM</th><th>Route</th></tr>
<tr><td>GET</td><td>/api/crm/customers: Sincronizar a lista de clientes com o CRM.</td></tr>
<tr><td>POST</td><td>/api/crm/customers: Enviar novos clientes ao CRM.</td></tr>
<tr><td>GET</td><td>/api/crm/leads: Sincronizar a lista de leads com o CRM.</td></tr>
<tr><td>POST</td><td>/api/crm/leads: Enviar novos leads ao CRM.</td></tr>
</table>

### <b><i>APIs para Segurança e Autenticação</i></b>
<table>
<tr><th>Autenticação</th><th>Route</th></tr>
<tr><td>POST</td><td>/api/auth/login: Autenticar um usuário e obter um token JWT.</td></tr>
<tr><td>POST</td><td>/api/auth/register: Registrar um novo usuário.</td></tr>
<tr><td>POST</td><td>/api/auth/logout: Logout do usuário e invalidar o token JWT.</td></tr>
</table>

## Estrutura de projeto

## Detalhamento das Funcionalidades

### Cadastro e gerenciamento de clientes;


### Cadastro e gerenciamento de templates de propostas(textos padrões, ordem de textos dentro da proposta, formatação) através de tags hmtl;


### Cadastro e gerenciamento de usuários(dados do usuário, departamento, funções/papel/responsabilidade), podendo o usuário ter uma ou mais função, mas em um unico departamento;


### Cadastro e gerenciamento de oportunidades(necessidade do cliente,registro da oportunidade);


### Cadastro e gerenciamento de propostas(criação, desenvolvimento, envio ao cliente);

