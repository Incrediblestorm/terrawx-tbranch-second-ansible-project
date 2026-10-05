# This project's AWX job templates. central-awx calls this module once per
# managed branch, from that branch, so each branch defines its own templates.


resource "awx_job_template" "show_os" {
  name      = "${var.name_prefix}show_os"
  project   = var.project_id
  inventory = var.inventory_id
  playbook  = "playbooks/show_os.yml"
}

resource "awx_job_template_credential" "show_os" {
  job_template_id = awx_job_template.show_os.id
  credential_ids  = [var.credential_id]
}

