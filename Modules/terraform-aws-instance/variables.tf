variable "region" {
  description = "The AWS region to deploy the instance in"
  type        = string
  default     = "ap-south-1"
}

variable "ami" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Example AMI, replace with your desired AMI  
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro" # Example instance type, replace with your desired type  
}