resource "google_compute_network_peering" "local_network_peering" {
  name                 = var.network_peering_name
  network              = var.network
  peer_network         = var.peer_network
  export_custom_routes = var.export_custom_routes
  import_custom_routes = var.import_peer_custom_routes

  export_subnet_routes_with_public_ip = var.export_subnet_routes_with_public_ip
  import_subnet_routes_with_public_ip = var.import_subnet_routes_with_public_ip
}