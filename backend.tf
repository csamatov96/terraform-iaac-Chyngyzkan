terraform {
  backend "s3" {
    bucket = "backend-state-chyngyzkan-class-two"
    key    = "infrastructure_folder_class2"
    region = "us-east-1"
  }
}