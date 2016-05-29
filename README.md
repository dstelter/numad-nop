# numad-nop
Dummy implementation of `numad` to answer all CLI queries with "All available nodes"

It solves a migration issue in libvirt/KVM environments, where `numad` is not available on
hypervisors, but some VMs are still configured to use "auto" placement.
Trying to live-migrate these instances will fail, because the target node will attempt to query
`numad`, receive an error, and attempt to initialize the domain with an empty cpuset.

This usually results in the obscure error `error: invalid argument: Failed to parse bitmap ''`.

`numad-nop` provides a dummy `numad` implementation, which answers all placement queries with all
available NUMA nodes.
