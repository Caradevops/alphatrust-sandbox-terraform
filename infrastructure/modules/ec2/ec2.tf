# 1. make everything a variable and add to variables.tf file
# 2. test ec2 instance creation to be successful

# 3. add terraform backend as s3 to variables.tf file
# 4. test ec2 instance creation to be successful

# 4.1. Make tag name also variable and add to variables.tf file
# 4.2. Test ec2 instance creation to be successful in personal account
# 4.3. Configure alphatrust sandbox account in local
# 4.4. Test ec2 instance creation to be successful in sandbox account

# 5. Describe one specific instance from sandbox acount using instance id https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/describe-instances.html
# 6. Compare output with below resource block
# 7. Add all missing properties to below block
# 8. Make values variables
# 9. Update variable.tf file with values
# 10. test ec2 instance creation to be successful

# Create EC2 Instance
resource "aws_instance" "ec2" {
    ami           = var.ec2_ami_id
    instance_type = var.ec2_instance_type
    count = var.ec2_instance_count  
    key_name = var.ec2_key_name
    availability_zone = var.ec2_availabiltity_zone
    subnet_id = var.ec2_subnet_id
    iam_instance_profile = var.ec2_iam_instance_profile
    user_data_base64 = var.ec2_user_data_base64
    security_groups = var.ec2_security_group
    source_dest_check = var.source_dest_check
    root_block_device = var.ec2_root_block_device
    ebs_block_device = var.ec2_ebs_block_device


    tags = {
        "Name" = "var.ec2_instance_name-${count.index}"
    }
}
