resource "time_sleep" "wait30" {
  create_duration = "30s"
}


resource "aws_instance" "my-ec2-instance" {

  ami = var.ami != "" ? var.ami : data.aws_ami.ubuntu.id # Use the provided AMI or the one from data source

  instance_type = var.instance_type

  key_name = var.key_name != "" ? var.key_name : null # Optional: specify key name for SSH access

  security_groups = var.security_groups != [] ? var.security_groups : null # Optional: specify security groups

  ebs_block_device {
    device_name           = "/dev/sda1" # Optional: specify device name
    volume_size           = 8           # Optional: specify volume size in GB
    volume_type           = "gp3"       # Optional: specify volume type
    delete_on_termination = true        # Optional: delete on termination
  }


  tags = {
    Name = "MyEC2Instance"
  }

  depends_on = [time_sleep.wait30]

}