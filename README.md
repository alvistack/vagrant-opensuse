# Vagrant Box Packaging for openSUSE

<a href="https://alvistack.com" title="AlviStack" target="_blank"><img src="/alvistack.svg" height="75" alt="AlviStack"></a>

[![GitLab pipeline
status](https://img.shields.io/gitlab/pipeline/alvistack/vagrant-opensuse/master)](https://gitlab.com/alvistack/vagrant-opensuse/-/pipelines)
[![GitHub
tag](https://img.shields.io/github/tag/alvistack/vagrant-opensuse.svg)](https://github.com/alvistack/vagrant-opensuse/tags)
[![GitHub
license](https://img.shields.io/github/license/alvistack/vagrant-opensuse.svg)](https://github.com/alvistack/vagrant-opensuse/blob/master/LICENSE)
[![Vagrant Box
download](https://img.shields.io/badge/dynamic/json?label=alvistack%2Fopensuse-leap-15.6&query=%24.boxes%5B%3A1%5D.downloads&url=https%3A%2F%2Fapp.vagrantup.com%2Fapi%2Fv1%2Fsearch%3Fq%3Dalvistack%2Fopensuse-leap-15.6)](https://app.vagrantup.com/alvistack/boxes/opensuse-leap-15.6)

openSUSE, formerly SUSE Linux, is a Linux distribution sponsored by SUSE
Software Solutions Germany GmbH (formerly SUSE Linux GmbH) and other
companies. Its "Leap" variant shares a common code base with, and is a
direct upgradable installation for the commercially-produced SUSE Linux
Enterprise, effectively making openSUSE Leap a non-commercial version of
the enterprise product. It is widely used throughout the world. The
focus of its development is creating usable open-source tools for
software developers and system administrators, while providing a
user-friendly desktop and feature-rich server environment.

Learn more about openSUSE: <https://www.opensuse.org/>

## Supported Boxes and Respective Packer Template Links

- [`alvistack/opensuse-tumbleweed`](https://app.vagrantup.com/alvistack/boxes/opensuse-tumbleweed)
  - [`packer/opensuse-tumbleweed-libvirt/packer.json`](https://github.com/alvistack/vagrant-opensuse/blob/master/packer/opensuse-tumbleweed-libvirt/packer.json)
  - [`packer/opensuse-tumbleweed-virtualbox/packer.json`](https://github.com/alvistack/vagrant-opensuse/blob/master/packer/opensuse-tumbleweed-virtualbox/packer.json)
- [`alvistack/opensuse-leap-15.6`](https://app.vagrantup.com/alvistack/boxes/opensuse-leap-15.6)
  - [`packer/opensuse-leap-15.6-libvirt/packer.json`](https://github.com/alvistack/vagrant-opensuse/blob/master/packer/opensuse-leap-15.6-libvirt/packer.json)
  - [`packer/opensuse-leap-15.6-virtualbox/packer.json`](https://github.com/alvistack/vagrant-opensuse/blob/master/packer/opensuse-leap-15.6-virtualbox/packer.json)

## Overview

- Packaging with [Packer](https://www.packer.io/)
- Minimal [Vagrant base box
  implementation](https://www.vagrantup.com/docs/boxes/base)
- Support [QEMU Guest
  Agent](https://wiki.qemu.org/Features/GuestAgent)
- Support [VirtualBox Guest
  Additions](https://www.virtualbox.org/manual/ch04.html)
- Support [Vagrant synced folder with
  rsync](https://www.vagrantup.com/docs/synced-folders/rsync)
- Support [Vagrant provisioner with
  Ansible](https://www.vagrantup.com/docs/provisioning/ansible)
- Standardize disk partition with GPT
- Standardize file system mount with UUID
- Standardize network interface with `eth0`

### Quick Start

Once you have [Vagrant](https://www.vagrantup.com/docs/installation) and
[VirtaulBox](https://www.virtualbox.org/) installed, run the following
commands under your [project
directory](https://learn.hashicorp.com/tutorials/vagrant/getting-started-project-setup?in=vagrant/getting-started):

    # Initialize Vagrant
    vagrant init alvistack/opensuse-leap-15.6

    # Start the virtual machine
    vagrant up

    # SSH into this machine
    vagrant ssh

    # Terminate the virtual machine
    vagrant destroy --force

### Molecule

You could also run our
[Molecule](https://molecule.readthedocs.io/en/stable/) test cases if you
have [Vagrant](https://www.vagrantup.com/) and
[Libvirt](https://libvirt.org/) installed, e.g.

    # Run Molecule on openSUSE Leap 15.6
    molecule converge -s opensuse-15.6-libvirt

Please refer to [.gitlab-ci.yml](.gitlab-ci.yml) for more information on
running Molecule.

## Versioning

### `YYYYMMDD.Y.Z`

Release tags could be find from [GitHub
Release](https://github.com/alvistack/vagrant-opensuse/tags) of this
repository. Thus using these tags will ensure you are running the most
up to date stable version of this image.

### `YYYYMMDD.0.0`

Version tags ended with `.0.0` are rolling release rebuild by [GitLab
pipeline](https://gitlab.com/alvistack/vagrant-opensuse/-/pipelines) in
weekly basis. Thus using these tags will ensure you are running the
latest packages provided by the base image project.

## License

- Code released under [Apache License 2.0](LICENSE)
- Docs released under [CC BY
  4.0](http://creativecommons.org/licenses/by/4.0/)

## Author Information

- Wong Hoi Sing Edison
  - <https://twitter.com/hswong3i>
  - <https://github.com/hswong3i>
