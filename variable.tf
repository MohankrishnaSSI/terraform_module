variable "region" {
  default = "us-west-1"
}

variable "ami" {
  default = "ami-0923beeb54657a66f"

}

variable "instance_type" {
  default = "t2.micro"

}

variable "key_name" {
  default = "terraform_pem"

}

variable "private_key_path" {

}
