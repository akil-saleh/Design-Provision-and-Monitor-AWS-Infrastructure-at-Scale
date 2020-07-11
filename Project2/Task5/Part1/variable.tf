provider "aws" {
    region = "us-east-2"
}

variable "instance_ami" {
    default = "ami-016b213e65284e9c9"
}

variable "instance_type_micro" {
    default = "t2.micro"
}

variable "instance_type_large" {
    default = "m4.large"
}

variable "public_subnet" {
    default = "subnet-010b2fe399d108c20"
}

variable "security_group" {
    default = "sg-014e25ab6984fb0b7"
}