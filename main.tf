provider "google" {
  project     = "genuine-citron-382303"
  region      = "us-central1"
}
resource "google_service_account" "service_account" {
  account_id = "github-action-1"
  display_name = "Service Account"
  project  = "genuine-citron-382303"
}
resource "google_project_iam_member" "service_account_iam" {
  project = "genuine-citron-382303"
  role    = "roles/iam.serviceAccountUser"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}
resource "google_artifact_registry_repository" "gar" {
  project       = "genuine-citron-382303"
  location      = "us-central1"
  repository_id = "repository"
  format        = "docker"
  depends_on = [google_service_account.service_account]
}