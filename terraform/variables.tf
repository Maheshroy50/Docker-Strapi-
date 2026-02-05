variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for Public Subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidr" {
  description = "CIDR block for Private Subnet"
  default     = "10.0.3.0/24"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  default     = "t3.micro"
}

variable "docker_image" {
  description = "Docker Hub Image Name (e.g., username/repo:tag)"
  type        = string
}

variable "db_password" {
  description = "Database Password"
  type        = string
  sensitive   = true
}

variable "jwt_secret" {
  description = "Strapi Admin JWT Secret"
  type        = string
  sensitive   = true
}

variable "api_token_salt" {
  description = "API Token Salt"
  type        = string
  sensitive   = true
}

variable "transfer_token_salt" {
  description = "Transfer Token Salt"
  type        = string
  sensitive   = true
}

variable "app_keys" {
  description = "Strapi App Keys (comma separated)"
  type        = string
  sensitive   = true
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into the instance"
  default     = "0.0.0.0/0" # WARNING: Change this to your IP in production
}
