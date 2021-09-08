# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0f1de785e835171d0" # Amazon2 Linux AMI ID
}

variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 2
}

variable "ec2_instance_type" {
    description = "instance type"
    type = string
    default = "t2.micro"
}

variable "ec2_instance_name" {
    description = "instance name"
    type = string
    default = "ec2"
}

variable "ec2_availabiltity_zone" {
    description = "availability zone"
    type = string
    default = "us-east-1"
}

variable "ec2_subnet_id" {
    description = "subnet id"
    type = string
    default = "subnet-6128a96f"
}

variable "ec2_vpc_security_group_ids" {
    description = "vpc id"
    type = string
    default = "vpc-3ad7cc40"
}

variable "ec2_key_name" {
    description = "key name"
    type = string
    default = "terraform-pem-key"
}

variable "ec2_security_group" {
    description = "default sg"
    type = string
    default = "sg-92e148b7"
}

variable "ec2_user_data_base64" {
  description = "userdata"
  type = string
  default = "IyEgL2Jpbi9iYXNoDQpzdWRvIGFwdC1nZXQgdXBkYXRlDQpzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSBhcGFjaGUyDQpzdWRvIHN5c3RlbWN0bCBzdGFydCBhcGFjaGUyDQpzdWRvIHN5c3RlbWN0bCBlbmFibGUgYXBhY2hlMg0KZWNobyAiPGgxPkRlcGxveWVkIHZpYSBUZXJyYWZvcm08L2gxPiIgfCBzdWRvIHRlZSAvdmFyL3d3dy9odG1sL2luZGV4Lmh0bWw="
}

variable "ec2_iam_instance_profile" {
    description = "iam instance profile"
    type = string
    default = ""
}

variable "ec2_source_dest_check" {
    description = "source_dest_check"
    type = string
    default = ""
}

variable "ec2_root_block_device" {
  description = "root_block_device"
    type = string
    default = ""
}

variable "ec2_ebs_block_device" {
  description = "ebs block device"
    type = string
    default = ""
}