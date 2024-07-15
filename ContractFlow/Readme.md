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
O projeto foi estruturado da seguinte forma para que os componentes da arquitetura fiquem organizados, facilitando sua manutenção.
```
myproject/
├── code/
│   ├── FastAPI 
│   │   ├── Address_Service/
│   │   │   ├── app/
│   │   │   │   ├── __init__.py
│   │   │   │   ├── models.py
│   │   │   │   ├── routes/
│   │   │   │   │   ├── __init__.py
│   │   │   │   │   └── Address_routes.py
│   │   │   │   └── config.py
│   │   │   ├── Dockerfile
│   │   │   ├── requirements.txt
│   │   │   └── run.py
│   │   ├── Auth_Service/
│   │   │   ├── app/
│   │   │   │   ├── __init__.py
│   │   │   │   ├── models.py
│   │   │   │   ├── routes/
│   │   │   │   │   ├── __init__.py
│   │   │   │   │   └── Auth_routes.py
│   │   │   │   └── config.py
│   │   │   ├── Dockerfile
│   │   │   ├── requirements.txt
│   │   │   └── run.py
│   │   ├── Contract_Service/
│   │   │   ├── app/
│   │   │   │   ├── __init__.py
│   │   │   │   ├── models.py
│   │   │   │   ├── routes/
│   │   │   │   │   ├── __init__.py
│   │   │   │   │   └── Contract_routes.py
│   │   │   │   └── config.py
│   │   │   ├── Dockerfile
│   │   │   ├── requirements.txt
│   │   │   └── run.py
│   │   ├── Customer_Service/
│   │   │   ├── app/
│   │   │   │   ├── __init__.py
│   │   │   │   ├── models.py
│   │   │   │   ├── routes/
│   │   │   │   │   ├── __init__.py
│   │   │   │   │   └── Customer_routes.py
│   │   │   │   └── config.py
│   │   │   ├── Dockerfile
│   │   │   ├── requirements.txt
│   │   │   └── run.py
│   │   ├── Leads_Service/
│   │   │   ├── app/
│   │   │   │   ├── __init__.py
│   │   │   │   ├── models.py
│   │   │   │   ├── routes/
│   │   │   │   │   ├── __init__.py
│   │   │   │   │   └── Leads_routes.py
│   │   │   │   └── config.py
│   │   │   ├── Dockerfile
│   │   │   ├── requirements.txt
│   │   │   └── run.py
│   │   ├── Proposal_Service/
│   │   │   ├── app/
│   │   │   │   ├── __init__.py
│   │   │   │   ├── models.py
│   │   │   │   ├── routes/
│   │   │   │   │   ├── __init__.py
│   │   │   │   │   └── Proposal_routes.py
│   │   │   │   └── config.py
│   │   │   ├── Dockerfile
│   │   │   ├── requirements.txt
│   │   │   └── run.py
│   │   ├── Template_Service/
│   │   │   ├── app/
│   │   │   │   ├── __init__.py
│   │   │   │   ├── models.py
│   │   │   │   ├── routes/
│   │   │   │   │   ├── __init__.py
│   │   │   │   │   └── Template_routes.py
│   │   │   │   └── config.py
│   │   │   ├── Dockerfile
│   │   │   ├── requirements.txt
│   │   │   └── run.py
│   │   └── User_Service/
│   │       ├── app/
│   │       │   ├── __init__.py
│   │       │   ├── models.py
│   │       │   ├── routes/
│   │       │   │   ├── __init__.py
│   │       │   │   └── User_routes.py
│   │       │   └── config.py
│   │       ├── Dockerfile
│   │       ├── requirements.txt
│   │       └── run.py
│   ├── DjangoApp/
│   │   ├── Dockerfile
│   │   ├── requirements.txt
│   │   ├── manage.py
│   │   ├── app/
│   │   │   ├── __init__.py
│   │   │   ├── admin.py
│   │   │   ├── apps.py
│   │   │   ├── models.py
│   │   ├── views.py
│   │   ├── urls.py
│   │   ├── serializers.py
│   │   ├── migrations/
│   │   │   ├── __init__.py
│   │   └── templates/
│   │       └── project/
│   │           ├── __init__.py
│   │           ├── asgi.py
│   │           ├── settings.py
│   │           ├── urls.py
│   │           ├── wsgi.py
│   ├── React (Front-end)
│   │   └── ??
│   ├── Nginx1 (proxy reverso entre os microserviços e o banco de dados)
│   │   └── ??
│   ├── Nginx2 (proxy reverso entre o Django e as APIs FastAPI)
│   │   └── ??
│   ├── Nginx3 (proxy reverso entre as APIs e o front-end)
│   │   └── ??
│   ├── Database
│   │   └── sql/
│   │       └── init-db.sql
│   ├── Dockerfiles/
│   │   ├── Dockerfile-database
│   │   ├── Dockerfile-nginx_DB_MS
│   │   ├── Dockerfile-django
│   │   ├── Dockerfile-nginx_MS_API
│   │   ├── Dockerfile-flastAPI
│   │   ├── Dockerfile-nginx_API_Front
│   │   └── Dockerfile-react
│   ├── docker-compose.yml
│   └── .env
├── draw/
│   ├── Fluxo_Workflow_de_propostas.drawio
└── README.md

```

## Tabelas da aplicação

## Detalhamento das Funcionalidades

### Cadastro e gerenciamento de clientes;


### Cadastro e gerenciamento de templates de propostas(textos padrões, ordem de textos dentro da proposta, formatação) através de tags hmtl;


### Cadastro e gerenciamento de usuários(dados do usuário, departamento, funções/papel/responsabilidade), podendo o usuário ter uma ou mais função, mas em um unico departamento;


### Cadastro e gerenciamento de oportunidades(necessidade do cliente,registro da oportunidade);


### Cadastro e gerenciamento de propostas(criação, desenvolvimento, envio ao cliente);

