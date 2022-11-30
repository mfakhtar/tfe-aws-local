output "tfe-fawaz-pubic-ip" {
    value = aws_instance.tfe-fawaz.public_ip
}

/*
output "fawaz-tfe-dns" {
    value = resource.dns_a_record_set.fawaz-tfe-dns.addresses
}
*/