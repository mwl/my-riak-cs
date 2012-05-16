node "riak10" {
    class {'riak':
        riakhost => $ipaddress_eth1
    }
}

node "riak11" {
    class {'riak':
        riakhost => $ipaddress_eth1,
        riak_ring => "riak@192.168.33.10"
    }
}

node "riak12" {
    class {'riak':
        riakhost => $ipaddress_eth1,
        riak_ring => "riak@192.168.33.10"
    }
}