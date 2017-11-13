# spring-security-db-example
Spring security with custom user service authentication and autheriztion, with MySql as credential provider along with spring boot.

* localhost:8080/rest/public

    This URL is for public. In order to access this, we don't need any authentication and authorization or roles.

* localhost:8080/rest/secured/admin

    This URL is for admin role with valid authentication. In order to access this, user should provide valid authentication credentials and that user should have "ADMIN" role for autherizing.

 * localhost:8080/rest/secured/loggedusers

    This URL is for user role with valid authentication. In order to access this, user should provide valid authentication credentials and that user should have "USER" role for autherizing.

