data "external" "local_install" {
  program = ["bash", "${path.module}/scripts/data.sh"]
}

resource "null_resource" "local_install" {
  depends_on = ["data.external.local_install"]

  provisioner "local-exec" {
    command = "bash ${path.module}/scripts/null.sh"
  }

  triggers {
    timestamp = "${timestamp()}"
  }
}

resource "null_resource" "local_install_on_destroy" {
  depends_on = ["data.external.local_install"]

  provisioner "local-exec" {
    command = "bash ${path.module}/scripts/null.sh"
    when    = "destroy"
  }
}
