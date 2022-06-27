resource "google_storage_bucket" "backend_bucket" {
    name = "${google_project.my_project-under-folder.name}-backend-tf"
    project = google_project.my_project-under-folder.name
    location = var.region
}