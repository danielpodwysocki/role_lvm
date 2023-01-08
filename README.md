# danielpodwysocki.role_lvm

A brief description of the role goes here.

## Requirements

All outside requirements.

Note: all pip requirements should be handled in the role's `requirements.txt` file.
All module and role dependencies should be handled in the role's requirements.yml file and included in the `meta/main.yml` file.

## Role Variables

| Name | Default value | Description | Required |
|------|---------------|-------------|:--------:|


## Example Playbook
```

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }
      vars:
        var1: value1
        var2: value2
```

## Testing and development

This repository uses [Molecule](https://molecule.readthedocs.io/en/latest/) for testing and development.
It abstracts some of the key commands behind a Makefile, so you can run the following commands:

```
make converge_vagrant # Create a Vagrant VM and run the role on it
make test_vagrant # Run the role and tests on an existing Vagrant VM
make destroy_vagrant # clean up the Vagrant VM
make clean # clean up the Vagrant VM, nuke the virtualenv
```

For vagrant, you need Vagrant and virtualbox installed.
You can find the settings for vagrant in the Makefile as well:
```
# what image to use for vagrant
export VAGRANT_DEFAULT_BOX=generic/rocky9
```

If you want to run molecule commands freely, you can use the `molecule` command directly.
Because we use scenarios, you must specify the one you're using with `-s`

```
source venv/bin/activate
export VAGRANT_DEFAULT_BOX=generic/rocky9

molecule <your command> -s vagrant
```


## Licensing and authorship

MIT
Author: Daniel Podwysocki (https://github.com/danielpodwysocki)
