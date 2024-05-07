variable "GOOGLE_PROJECT" {
  type        = string
  nullable    = false
  description = "GCP project name"
}
variable "GOOGLE_REGION" {
  type        = string
  nullable    = false
  default     = "us-central1-c"
  description = "GCP location name"
}

variable "GKE_NUM_NODES" {
  type        = number
  nullable    = false
  default     = 2
  description = "node pool size"
}