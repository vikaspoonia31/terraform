# variable "auth0_domain" {
#   default = "dev-ghezxtq6.us.auth0.com"
# }
# variable "auth0_client_id" {default = "6mB0obuW7r0LLxHQPSxo236E3yJ2t0tB"}
# variable "auth0_client_secret" {default = "xaCXsR0kKqlUYCZSFWmbWqw53fkJl4JU3N-24CyC7lkmfsPZXED58QAZHFqlI_E3m"}

terraform {
  required_providers {
    auth0 = {
      source  = "alexkappa/auth0"
      version = "~> 0.16.0"
    }
  }
}

provider "auth0" {
  domain        = var.auth0_domain
  client_id     = var.auth0_client_id
  client_secret = var.auth0_client_secret
}

 resource "auth0_user" "newuser" {
   #   name            = "Test User"
   email           = "john.doe@gmail.com"
   user_id         = "abc"
   connection_name = "Username-Password-Authentication"
   password        = "secret123@"
   email_verified  = false
  #   username="johndoe"
  # connection_name = auth0_connection.terraform-express-user-db.name
  #  user_id         = "12345"
  #  email           = "admin@example.com"
  # email_verified  = true
  #password        = var.auth0_admin_user_password
  #   description     = "My example application using Auth0 and managed via Terraform"
  #   app_type        = "regular_web"
  #   callbacks       = ["http://localhost:3000/callback"]
  #   oidc_conformant = true

  #   jwt_configuration {
  #     alg = "RS256"
  #   }
#}


# resource "auth0_user" "latest_user222" {
#   #   name            = "Test User"
#   email           = "latest_user2@gmail.com"
#   user_id         = "1234562"
#   connection_name = "Username-Password-Authentication"
#   password        = "secret1232@"
#   email_verified  = true
}



