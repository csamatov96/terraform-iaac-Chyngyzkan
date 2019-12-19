terraform {
  backend "s3" {
    bucket = "backend-state-chyngyzkan-class-two"
    key    = "infrastructure_folder_class2" #is how u wanna save u file 
    region = "us-east-1"
  }
}