data "aws_ami" "ununtu" {
  most_recent = true

  owners = ["self", "ubuntu", "099720109477", "amazon"] # Example owner IDs, replace with actual IDs as needed

  include_deprecated = false # Optional: whether to include deprecated AMIs 

  name_regex = "ubuntu/images/hvm-ssd(-[a-z0-9]+)?/ubuntu-.*" # Optional: regex to filter AMI names


# Optional: filter by specific criteria
# Uncomment and modify as needed
/*  filter {
    name   = "name"
    values = ["My AMI"]
  }
*/
}