/*
resource "dns_a_record_set" "fawaz-tfe-dns" {
  zone = var.existing_zone
  name = var.env_name
  addresses = [
    aws_instance.tfe-fawaz.public_ip
  ]
  ttl = 300
}
*/