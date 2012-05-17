node "riak10" {
    class {'riak':
        riakhost => $ipaddress_eth1,
        backend_profile => "cs",
    }

    class {'riakcs::stanchion':
        stanchionhost => $ipaddress_eth1,
    }

    class {'riakcs':
        riakcshost => $ipaddress_eth1,
    }
}

node "riak11" {
    class {'riak':
        riakhost => $ipaddress_eth1,
        riak_ring => "riak@192.168.33.10",
        backend_profile => "cs",
    }

    class {'riakcs':
        riakcshost => $ipaddress_eth1,
        stanchion_ip => "192.168.33.10",
    }
}

node "riak12" {
    class {'riak':
        riakhost => $ipaddress_eth1,
        riak_ring => "riak@192.168.33.10",
        backend_profile => "cs",
    }

    class {'riakcs':
        riakcshost => $ipaddress_eth1,
        stanchion_ip => "192.168.33.10",
    }
}
