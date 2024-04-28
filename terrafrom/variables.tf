variable "region" {}
variable "cidr_aws_vpc" {}
variable "cidr_private-us-east-1a" {}
variable "cidr_private-us-east-1b" {}
variable "cidr_public-us-east-1a" {}
variable "cidr_public-us-east-1b" {}
variable "ec2_instance_type" {}
variable "rds_lifecycle" {}
variable "corn_scema" {}
variable "repo_name" {}
variable "eks_version" {}
variable "tls_algorithm" {}
variable "tls_rsa_bits" {}
variable "private_key_file_permission" {}
variable "ec2_capacity_type" {}
variable "scaling_desired_size" {}
variable "scaling_max_size" {}
variable "scaling_min_size" {}
variable "max_unavailable" {}
variable "rds_allocated_storage" {}
variable "rds_db_name" {}
variable "rds_engine" {}
variable "rds_engine_version" {}
variable "rds_instance_class" {}
variable "rds_username" {}
variable "rds_password" {}
variable "rds_parameter_group_name" {}
variable "rds_skip_final_snapshot" {}
variable "subnet_kubernetes_io_role_internal-elb" {
  
}
variable "subnet_kubernetes_io_cluster_demo" {
  
}
