terraform {
  backend "gcs"{
    bucket      = "test-1236-5600-backend-tf" # if you want to use your own storage bucket for backend update inside the "" .(Also in infrastructure_creation directory backend)
    prefix = "api"
  }
}