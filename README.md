# Vagrant Box Packaging for openSUSE

[![GitLab pipeline status](https://img.shields.io/gitlab/pipeline/alvistack/vagrant-opensuse/master)](https://gitlab.com/alvistack/vagrant-opensuse/-/pipelines)
[![GitHub release](https://img.shields.io/github/release/alvistack/vagrant-opensuse.svg)](https://github.com/alvistack/vagrant-opensuse/releases)
[![GitHub license](https://img.shields.io/github/license/alvistack/vagrant-opensuse.svg)](https://github.com/alvistack/vagrant-opensuse/blob/master/LICENSE)
[![Vagrant Box download](https://img.shields.io/badge/dynamic/json?label=alvistack%2Fopensuse-leap-15.2&query=%24.boxes%5B%3A1%5D.downloads&url=https%3A%2F%2Fapp.vagrantup.com%2Fapi%2Fv1%2Fsearch%3Fq%3Dalvistack%2Fopensuse-leap-15.2)](https://app.vagrantup.com/alvistack/boxes/opensuse-leap-15.2)

openSUSE, formerly SUSE Linux, is a Linux distribution sponsored by SUSE Software Solutions Germany GmbH (formerly SUSE Linux GmbH) and other companies. Its "Leap" variant shares a common code base with, and is a direct upgradable installation for the commercially-produced SUSE Linux Enterprise, effectively making openSUSE Leap a non-commercial version of the enterprise product. It is widely used throughout the world. The focus of its development is creating usable open-source tools for software developers and system administrators, while providing a user-friendly desktop and feature-rich server environment.

Learn more about openSUSE: <https://www.opensuse.org/>

## Supported Boxes and Respective Packer Template Links

  - [`alvistack/opensuse-leap-15.2`](https://app.vagrantup.com/alvistack/boxes/opensuse-leap-15.2)
      - [`packer/libvirt-leap-15.2/packer.json`](https://github.com/alvistack/vagrant-opensuse/blob/master/packer/libvirt-leap-15.2/packer.json)
      - [`packer/virtualbox-leap-15.2/packer.json`](https://github.com/alvistack/vagrant-opensuse/blob/master/packer/virtualbox-leap-15.2/packer.json)
  - [`alvistack/opensuse-tumbleweed`](https://app.vagrantup.com/alvistack/boxes/opensuse-tumbleweed)
      - [`packer/libvirt-tumbleweed/packer.json`](https://github.com/alvistack/vagrant-opensuse/blob/master/packer/libvirt-tumbleweed/packer.json)
      - [`packer/virtualbox-tumbleweed/packer.json`](https://github.com/alvistack/vagrant-opensuse/blob/master/packer/virtualbox-tumbleweed/packer.json)

## Overview

  - Packaging with [Packer](https://www.packer.io/)
  - Minimal [Vagrant base box implementation](https://www.vagrantup.com/docs/boxes/base)
  - Support [Vagrant synced folder with rsync](https://www.vagrantup.com/docs/synced-folders/rsync)
  - Support [Vagrant provisioner with Ansible](https://www.vagrantup.com/docs/provisioning/ansible)
  - Standardize disk partition with GPT
  - Standardize file system mount with UUID
  - Standardize network interface with `eth0`

### Quick Start

Once you have [Vagrant](https://www.vagrantup.com/docs/installation) and [VirtaulBox](https://www.virtualbox.org/) installed, run the following commands under your [project directory](https://learn.hashicorp.com/tutorials/vagrant/getting-started-project-setup?in=vagrant/getting-started):

    # Initialize Vagrant
    vagrant init alvistack/opensuse-leap-15.2
    
    # Start the virtual machine
    vagrant up
    
    # SSH into this machine
    vagrant ssh
    
    # Terminate the virtual machine
    vagrant destroy --force

## Versioning

### `alvistack/opensuse-leap-15.2:YYYYMMDD.Y.Z`

Release tags could be find from [GitHub Release](https://github.com/alvistack/vagrant-opensuse/releases) of this repository. Thus using these tags will ensure you are running the most up to date stable version of this image.

### `alvistack/opensuse-leap-15.2:YYYYMMDD.0.0`

Version tags ended with `.0.0` are rolling release rebuild by [GitLab pipeline](https://gitlab.com/alvistack/vagrant-opensuse/-/pipelines) in weekly basis. Thus using these tags will ensure you are running the latest packages provided by the base image project.

## License

  - Code released under [Apache License 2.0](LICENSE)
  - Docs released under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/)

## Author Information

  - Wong Hoi Sing Edison
      - <https://twitter.com/hswong3i>
      - <https://github.com/hswong3i>
