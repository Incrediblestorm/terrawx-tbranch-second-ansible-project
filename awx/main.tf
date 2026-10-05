# This project's AWX job templates. Each one is a call to central-awx's
# job-template module, which handles naming, inventory and credentials; you
# only say what the template is. See central-awx's modules/job-template for
# all the options (job_type, limit, extra_vars, survey, credentials, ...).

module "show_os" {
  source  = var.modules.job_template
  context = var.context

  name     = "show_os"
  playbook = "playbooks/show_os.yml"
}

# One-time migration from the previous layout (templates defined directly in
# this module); safe to delete once it has been applied everywhere.
moved {
  from = awx_job_template.show_os
  to   = module.show_os.awx_job_template.this
}

moved {
  from = awx_job_template_credential.show_os
  to   = module.show_os.awx_job_template_credential.this
}
