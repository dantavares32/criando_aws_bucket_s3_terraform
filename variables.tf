# Arquivo onde declaramos as variáveis que serão usadas no main.tf

# Declara variavel para definir a região da AWS
variable "region" {
  description = "A região onde os recursos da AWS serão criadas"
  type        = string
}

variable "bucket_name" {
  description = "O nome do bucket S3"
  type        = string
}

