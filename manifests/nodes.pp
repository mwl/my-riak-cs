node "riak10" {
    class {'riak':
        riakhost => $ipaddress_eth1
    }
}

node "riak11" {
    class {'riak':
        riakhost => $ipaddress_eth1
    }
}

node "riak12" {
    class {'riak':
        riakhost => $ipaddress_eth1
    }
}