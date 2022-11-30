# resource "google_service_account" "sa" {
#   account_id = var.service_account_id
#   project = var.project_id
# }

# resource "google_project_iam_custom_role" "my-custom-role" {
#   project = var.project_id
#   role_id     = "testing"
#   title       = "My Instance Test"
#   description = "A description"
#   permissions = ["roles/editor"]
# }

# resource "google_project_iam_binding" "myCustomRole-iam" {
#     project = var.project_id
#     role    = google_project_iam_custom_role.my-custom-role.id
#     members = [
#       "serviceAccount:terraformsakey@pubsubdemo-368610.iam.gserviceaccount.com"
#     ]
#     depends_on = [
#       google_project_iam_custom_role.my-custom-role
#     ]
# }

resource "google_project_iam_custom_role" "my-custom-role" {
  project = var.project_id
  role_id     = var.role_id
  title       = var.title
  permissions = var.permissions
}

resource "google_project_iam_binding" "project" {
  project = var.project_id
  role    = google_project_iam_custom_role.my-custom-role.id
  members = var.members
  depends_on = [
    google_project_iam_custom_role.my-custom-role
  ]
}

 
