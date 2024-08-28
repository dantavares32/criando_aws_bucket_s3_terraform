# Arquivo principal onde definimos os recursos e o provedor  a ser utilizado 

terraform {
  required_version = ">= 1.0.0" # define versão permitida igual ou maior que 1.0.0

  # Define a versão mínima do Terraform que é necessária para executar o código
  required_providers {
    aws = {
      source  = "hashicorp/aws" #especifica a origem do provedor
      version = ">= 4.0.0"      #define a versão minima do provedor, quem determina é a hashicorp
    }
  }
}

provider "aws" {
  region = var.region #referencia da variavel "region" no arquivo variables.tf
}

resource "aws_s3_bucket" "bucket_name" {
  bucket = var.bucket_name #referencia da variavel "bucket_name" no arquivo variables.tf
  
}



