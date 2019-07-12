# Common
variable "domain" {
  default = "domain.tld"
}

variable "subdomain" {
  default = "sub.domain.tld"
}

variable "owner" {
    default = "terraform"
}
variable "primary_subnet_cidr" {
    description = "Primary subnet allocated to instances"
    default = "10.0.0.0/25"
}

variable "secondary_subnet_cidr" {
    description = "Secondary subnet allocated to instances"
    default = "10.0.0.128/25"
}

variable "resource_prefix" {
    description = "Prefix of any resource instanciated in the cloud provider"
    default = "okd39"
}
variable "master_name" {
    description = "Prefix of master hostname ('master_count' index will be added at the end to generate a unique resource name)"
    default = "master"
}
variable "master_count" {
    description = "Number of instances dedicated to OpenShift master (controller) role"
    default = "3"
}

variable "node_name" {
    description = "Prefix of node hostname ('node_count' index will be added at the end to generate a unique resource name)"
    default = "node"
}

variable "node_count" {
    description = "Number of instances dedicated to OpenShift node (worker) role"
    default = "3"
}

variable "ssh_public_key" {
    description = "SSH public keys to be registered to access the instance"
    default = "~/.ssh/id_rsa.pub"
}

variable "ssh_private_key" {
    description = "Prefix of node hostname ('node_count' index will be added at the end to generate a unique resource name)"
    default = "~/.ssh/id_rsa.key"
}

# GCP
variable "gcp_bastion_type" {
  description = "GCE server model for SSH Bastion host"
  default = "f1-micro"
}

variable "gcp_bastion_image" {
  default = "centos-cloud/centos-7"
}

variable "gcp_gateway_type" {
  description = "GCE server model for Nat Gateway host"
  default = "f1-micro"
}

variable "gcp_credentials" {
    description = "Either the path to or the contents of a service account key file in JSON format"
    default     = "account.json"
}
variable "gcp_project" {
    description = "The default project to manage resources in"
}

variable "gcp_region" {
    description = "The default region to manage resources in"
    default = "europe-west1"
}

variable "gcp_zone" {
    description = "The default zone to manage resources in"
    type        = "string"
    default     = "europe-west1b"
}

variable "gcp_cluster_zones" {
    description = "The default zone to manage resources in"
    type        = "list"
    default     = ["europe-west1-b", "europe-west1-c", "europe-west1-d"]
}
variable "gce_network_name" {
    description = "The name of network dedicated to GCE instances"
    default = "terrasalt-openshift"
}

variable "gce_master_type" {
    description = "GCE server model for OpenShift master"
    default = "f1-micro"
}


variable "gce_node_type" {
    description = "GCE server model for OpenShift node"
    default = "f1-micro"
}

variable "gce_image_family" {
    description = "GCE image family"
    default     = "centos-7"
}

variable "gce_image_project" {
    description = "GCE image project"
    default     = "centos-cloud"
}

variable "gcp_service_account_scopes" {
    type    = "list"
    default = []
}

variable "gcp_access_config" {
  default = []
}

# Cloudflare

variable "cloudflare_email" {
  description = "Cloudflare API access e-mail"
  default     = "user@domain.tld"
}

variable "cloudflare_token" {
  description = "Cloudflare API access token"
  default     = "01234567890123456789012345678901234567"
}