# Employee Module
Microservice to handle the employees of a Company and its benefits.
Spring Boot + docker + pgAdmin4.
# Required tools
1. Docker desktop
2. pgAdmin4
3. Spring Tools Suite

### To execute this project:
###### Download the project. 
###### Create the database using the sql file included in the project.
###### Open the project using Spring Tools Suite.
###### Run the project.

### To run it using docker:
###### Open a console in the project folder. (The root).
###### Run the command: docker-compose up
###### Go to http://localhost:8080/

### Database: 
Once the docker-compose up command is executed go to http://localhost:5050.
The pgadmin password is "admin". Once loaded, connect to the server with the following parameters:

###### HOST: employees-db
###### PORT: 5432
###### User: user_test
###### Password: 123

Next, populate the database using the sql file EmployeesModule-dumps.sql

# Endpoints

##### Role: ADMIN
###### Employees
###### GET: /api/employees
###### GET: /api/employees/basic-info
###### GET: /api/employees/{id}
###### GET: /api/employees/basic-info/{id}
###### POST: /api/employees
###### PUT: /api/employees/{id}
###### PATCH: /api/employees/partial-update/{id}
###### PATCH: /api/employees/{id} (Disable an employee)
###### PATCH: /api/employees/add-benefit
###### PATCH: /api/employees/remove-benefit
###### Benefits
###### GET: /api/benefits
###### GET: /api/benefits/{id}
###### POST: /api/benefits
###### PUT: /api/benefits/{id}
###### PATCH: /api/benefits/partial-update/{id}
###### PATCH: /api/benefits/{id} (Disable a benefit)

##### Role: USER
###### GET: /api/employees/user-info
###### GET: /api/benefits/user-benefits
