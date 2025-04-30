variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Linux 2 Kernel 5.10"
  default     = "ami-091dccf4e2d272bae" # Amazon linux 2 ami
}

variable "key_name" {
  description = "ssh key for k3s"
  default="ssh_k3s"
}

variable "public_key_path" {
  description = "Path to your public SSH key"
  default="ssh-key.pub"
}
