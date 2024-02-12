output "id" {
  value = join("", digitalocean_cdn.main[*].id)
}