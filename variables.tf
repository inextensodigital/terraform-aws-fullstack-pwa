# GLOBAL VARIABLES
variable "stage" {
  type        = "string"
  description = "The deploy environment in [prod, dev, preprod]"
}

variable "common_tags" {
  type        = "map"
  description = "a list of tags set on the different resources"
  default     = {}
}

variable "app_id" {
  type        = "string"
  description = "The id of the application"
}

variable "app_name" {
  type        = "string"
  description = "The name of the application"
}

# PROVIDER VARIABLES

variable "aws_region" {
  type        = "string"
  description = "The aws region where the infrastructure is hosted"
  default     = "eu-central-1"
}

variable "certificate_domain" {
  type        = "string"
  description = "the domain certificate for cloudfront"
}

# Route53 Variables
variable "domains" {
  type        = "list"
  description = "a list of domain pointing to the cloud front instance (e.g., myapp.mydomain.fr)"
}

variable "alternate_domains" {
  type        = "list"
  description = "a list of domain pointing to the cloud front instance (e.g., myapp.mydomain.fr)"
  default     = []
}

variable "api_domain" {
  type        = "string"
  default     = ""
  description = "the api domain name"
}

variable "redirect_to_api" {
  type        = list(string)
  default     = []
  description = "creates new cloudfront behaviors pointing to the rest api origin-id"
}

variable "bucket_name" {
  type        = "string"
  default     = ""
  description = "optional bucket name"
}


variable "redirect_dk" {
  type        = bool
  default     = false
  description = "whether dk request should be redirected to direct domain"
}
