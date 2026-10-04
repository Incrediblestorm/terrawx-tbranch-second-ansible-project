terraform {
  required_providers {
    awx = {
      # Must match the source central-awx uses, so this module shares its
      # provider configuration.
      source = "registry.terraform.io/tfbrew/awx"
    }
  }
}
