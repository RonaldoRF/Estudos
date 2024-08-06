```
ContractFlow/
├── APIs/
│   ├── FastAPI/
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
│   ├── Microservices/
│   │   ├── DjangoApp/
│   │   │   ├── Dockerfile
│   │   │   ├── requirements.txt
│   │   │   └── app/
│   │   │       ├── manage.py
│   │   │       ├── msdbs
│   │   │       ├── ActivityBranchs
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── AttributeTypes
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── Attributes
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── BusinessSectors
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── ContactChannelRepresentatives
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── Cities
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── ContactChannelTypes
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── Countries
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── CustomerAddress
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── Customers
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── ElementTypes
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── DataTypes
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── Employees
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── MarketSegments
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── Profiles
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── ProfilesRoles
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── Representatives
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── ServiceSubcategories
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── Roles
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── States
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── Status
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── StepStatus
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── Steps
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── Streets
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── TemplateAttributes
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── TemplateSteps
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── TemplateElements
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       ├── Users
│   │   │       │   ├── __init__.py
│   │   │       │   ├── admin.py
│   │   │       │   ├── apps.py
│   │   │       │   ├── models.py
│   │   │       │   ├── tests.py
│   │   │       │   ├── views.py
│   │   │       │   └── migrations
│   │   │       │       ├── __init__.py
│   │   │       │       └── 0001_initial.py
│   │   │       └── Templates
│   │   │           ├── __init__.py
│   │   │           ├── admin.py
│   │   │           ├── apps.py
│   │   │           ├── models.py
│   │   │           ├── tests.py
│   │   │           ├── views.py
│   │   │           └── migrations
│   │   │               ├── __init__.py
│   │   │               └── 0001_initial.py
│   ├── UserInterface
│   │   └── React (Front-end)
│   │       ├── src/
│   │       │   ├── components/
│   │       │   │   ├── Header/
│   │       │   │   │   ├── Header.js
│   │       │   │   │   └── Header.css
│   │       │   │   ├── Footer/
│   │       │   │   │   ├── Footer.js
│   │       │   │   │   └── Footer.css
│   │       │   │   └── ...
│   │       │   ├── pages/
│   │       │   │   ├── Home/
│   │       │   │   │   ├── Home.js
│   │       │   │   │   └── Home.css
│   │       │   │   ├── About/
│   │       │   │   │   ├── About.js
│   │       │   │   │   └── About.css
│   │       │   │   └── ...
│   │       │   ├── services/
│   │       │   │   ├── api.js
│   │       │   │   └── ...
│   │       │   ├── utils/
│   │       │   │   ├── helpers.js
│   │       │   │   └── ...
│   │       │   ├── styles/
│   │       │   │   ├── global.css
│   │       │   │   └── ...
│   │       │   ├── App.js
│   │       │   ├── index.js
│   │       │   └── index.css
│   │       ├── public/
│   │       │   ├── index.html
│   │       │   ├── favicon.ico
│   │       │   └── ...
│   │       ├── package.json
│   │       ├── package-lock.json
│   │       ├── .gitignore
│   │       ├── .env
│   │       └── README.md
│   ├── Balance/
│   │   ├── Nginx1 (proxy reverso entre os microserviços e o banco de dados)
│   │   │   ├── nginx.conf
│   │   │   ├── default.conf
│   │   │   ├── mime.types
│   │   │   ├── fastcgi_params
│   │   │   ├── uwsgi_params
│   │   │   ├── ssl/
│   │   │   │   ├── server.crt
│   │   │   │   └── server.key
│   │   │   └── nginx.sh
│   │   ├── Nginx2/ (proxy reverso entre o Django e as APIs FastAPI)
│   │   │   ├── nginx.conf
│   │   │   ├── default.conf
│   │   │   ├── mime.types
│   │   │   ├── fastcgi_params
│   │   │   ├── uwsgi_params
│   │   │   ├── ssl/
│   │   │   │   ├── server.crt
│   │   │   │   └── server.key
│   │   │   └── nginx.sh
│   │   └── Nginx3 (proxy reverso entre as APIs e o front-end)
│   │       ├── nginx.conf
│   │       ├── default.conf
│   │       ├── mime.types
│   │       ├── fastcgi_params
│   │       ├── uwsgi_params
│   │       ├── ssl/
│   │       │   ├── server.crt
│   │       │   └── server.key
│   │       └── nginx.sh
│   ├── Database
│   │   └── SQL/
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
│   └── Fluxo_Workflow_de_propostas.drawio
└── README.md

```
