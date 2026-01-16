deployment "staging" {
  inputs = {
    vpc_id             = upstream_input.network_stack.vpc_id_staging
    subnet_private_id  = upstream_input.network_stack.subnet_private_id_staging
    subnet_public_id   = upstream_input.network_stack.subnet_public_id_staging
    bucket_id          = upstream_input.storage_stack.bucket_id_staging
  }
}

deployment "prod" {
  inputs = {
    vpc_id             = upstream_input.network_stack.vpc_id_prod
    subnet_private_id  = upstream_input.network_stack.subnet_private_id_prod
    subnet_public_id   = upstream_input.network_stack.subnet_public_id_prod
    bucket_id          = upstream_input.storage_stack.bucket_id_prod
  }
}

upstream_input "network_stack" {
  type = "stack"
  source = "tfcdev-8e6580d7.ngrok.app/hashicorp/Default Project/demo-network-upstream"
}

upstream_input "storage_stack" {
  type = "stack"
  source = "tfcdev-8e6580d7.ngrok.app/team-runtime/Default Project/demo-storage-upstream"
}
