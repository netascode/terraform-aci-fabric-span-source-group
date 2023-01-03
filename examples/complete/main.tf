module "aci-fabric-span-source-group" {
  source      = "netascode/fabric-span-source-group/aci"
  version     = "0.0.1"
  name        = "SPAN1"
  description = "My Test Fabric Span Source Group"
  admin_state = false
  sources = [
    {
      name        = "SRC1"
      description = "Source1"
      direction   = "both"
      span_drop   = "no"
      tenant      = "TEN1"
      vrf         = "VRF1"
      fabric_paths = [
        {
          node_id = 1001
          port    = 1
        }
      ]
    },
    {
      name          = "SRC2"
      description   = "Source2"
      direction     = "in"
      span_drop     = "no"
      tenant        = "TEN1"
      bridge_domain = "BD1"
      fabric_paths = [
        {
          node_id = 101
          port    = 49
        },
      ]
    }
  ]
  destination = {
    name        = "DESTINATION1"
    description = "My Destination"
  }
}