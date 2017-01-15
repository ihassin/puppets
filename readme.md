# Puppet demo

## Intro

## Set up

For fun, the project sets up the Puppet server and agent VMs using Ansible.

###Set your /etc/hosts file:

```bash
33.33.44.11             stage.puppet-server.com
33.33.44.22             stage.puppet-agent.com
```

### Add your __public__ key to 
infra/roles/common/files/ita.pub
to allow you to ssh directly to the VMs. Otherwise use ```vagrant ssh puppet-server``` and ```vagrant ssh puppet-agent```

After adding your _public_ key, you can ssh to the VMs using:
 
```ssh deploy@stage.puppet-server.com``` and ```ssh deploy@stage.puppet-agent.com``` 
 
###Run

```
cd infra
vagrant up
```

##ServerSpec

To run the serverspec tests, do the following:

```bash
bundle
cd spec
rake spec
```