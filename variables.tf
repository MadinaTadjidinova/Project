variable "instance_name" {
  description = "Name of the GCP Compute Instance"
  type        = string
}

variable "machine_type" {
  description = "Machine type for the GCP Compute Instance"
  type        = string
}

variable "zone" {
  description = "Zone for the GCP Compute Instance"
  type        = string
}

variable "image" {
  description = "Image for the GCP Compute Instance"
  type        = string
}
