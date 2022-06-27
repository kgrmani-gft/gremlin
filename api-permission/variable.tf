variable "apis_to_activate" {
  description = "apis that will be enabled"
  type        = list(string)
  default     = [
  "iam.googleapis.com",
  "container.googleapis.com",
  "servicemanagement.googleapis.com",
  "serviceconsumermanagement.googleapis.com",
  "cloudresourcemanager.googleapis.com", 
  "compute.googleapis.com"
  ]
}
variable "project" {
  
}
variable "region" {
  
}
variable "gke_cluster_name" {
  
}
variable "machine_type" {
  
}