terraform {
  cloud {
    organization = "zim-mmd"
    workspaces {
      name = "mmd-zimkha"
    }
  }
}
provider "aws" {
  region  = "us-west-2"
}