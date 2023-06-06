output "instance_name" {
  description = "Name of the created GCP Compute Instance"
  value       = google_compute_instance.my_instance.name
}
