terraform {
  backend "s3" {
  }
}

terraform {
  required_providers {
    octopusdeploy = { 
      source = "OctopusDeploy/octopusdeploy", version = "1.3.3"
    }
  }
}

provider "octopusdeploy" {
  address  = var.octopus_server
  api_key  = var.octopus_apikey
  space_id = var.octopus_space_id
}