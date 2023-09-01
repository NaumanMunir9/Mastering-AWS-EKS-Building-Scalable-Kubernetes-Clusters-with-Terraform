resource "null_resource" "copy_ec2_keys" {
  depends_on = [module.ec2_public]

  connection {
    type        = "ssh"
    host        = aws_eip.bastion_eip.public_ip
    user        = "ec2-user"
    password    = ""
    private_key = file("private-key/tf-key.pem")
  }

  provisioner "file" {
    source      = "private-key/tf-key.pem"
    destination = "/tmp/tf-key.pem"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod 400 /tmp/tf-key.pem"
    ]
  }
}
