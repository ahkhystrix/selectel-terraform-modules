# NAT

Terraform module to create a NAT objects in project.

## Variables

  * `router_external_net_name` - OpenStack Networking external Network reference (default "external-network")

  * `router_name` - OpenStack Networking Router name (default "router_1")

  * `network_name` - OpenStack Networking Network name (default "network_1")

  * `subnet_cidr` - OpenStack Networking Subnet CIDR (default "192.168.0.0/24")

## Outputs

  * `router_id` - ID of the created router

  * `network_id` - ID of the created network

  * `subnet_id` - ID of the created subnet
