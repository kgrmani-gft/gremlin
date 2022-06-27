resource "google_project" "my_project-under-folder" {
  name       = var.new_project_name
  project_id = var.new_project_id
  folder_id  = var.folder_id # "943956663445"
  billing_account = var.billing_account # "01A2F5-73127B-50AE5B"
}
