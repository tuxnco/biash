# SaltStack


## Install

Manages SaltStack via `apt`.

Here's a oneliner to install SaltStack (only tested on a Ubuntu dist):

```bash
curl -L https://raw.githubusercontent.com/damiencaselli/biash/master/saltstack/salt_install | sudo bash -s -- -r salt-master
```

If you don't want to use `apt`, there are still good oneliners from [SaltStack website](http://salt.readthedocs.org/en/latest/topics/tutorials/salt_bootstrap.html#command-line-options).
