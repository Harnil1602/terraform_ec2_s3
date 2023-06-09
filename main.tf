

terraform{

	required_providers{
		aws={
		source= "hashicorp/aws"
		version= "~>4.16"
		}
	}
	required_version=">=1.2.0"
}
provider "aws" {
	  region = "ap-south-1"  # Replace with your desired region
}
resource "aws_instance" "aws_ec2_test" {
	 count=4
 	 ami           = "ami-0f5ee92e2d63afc18"  # Replace with the desired AMI ID
 	 instance_type = "t2.micro"  # Replace with the desired instance type
 	 tags={
		Name="Terraform-instance"
}

}
resource "aws_s3_bucket" "aws_s3_test" {
  bucket = "harnilshah123456"  # Replace with your desired bucket name

  # Add additional configuration settings as needed
}






