resource_group_name                 = "betrandndah-azr-883b"
virtual_network_name                = "vnet"
subnet_name                         = "default"
storage_account_name                = "assessmentrackspacesa"
vmscaleset_name                     = "vmss"
linux_distribution_name             = "ubuntu1804"
virtual_machine_size                = "Standard_A2_v2"
admin_username                      = "azureadmin"
generate_admin_ssh_key              = true
instances_count                     = 2
enable_proximity_placement_group    = true
assign_public_ip_to_each_vm_in_vmss = true
enable_automatic_instance_repair    = true
load_balancer_type                  = "public"
load_balancer_health_probe_port     = 80
load_balanced_port_list             = [80, 443]
additional_data_disks               = [100, 200]
enable_autoscale_for_vmss           = true
minimum_instances_count             = 2
maximum_instances_count             = 5
scale_out_cpu_percentage_threshold  = 80
scale_in_cpu_percentage_threshold   = 20
enable_boot_diagnostics             = true
nsg_inbound_rules = [
  {
    name                   = "http"
    destination_port_range = "80"
    source_address_prefix  = "*"
  },
  {
    name                   = "https"
    destination_port_range = "443"
    source_address_prefix  = "*"
  }
]
deploy_log_analytics_agent = true