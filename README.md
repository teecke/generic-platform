# Generic Platform

## Objective

Build a set of pieces able to act as a Cloud Training Lab. Key points:

- Compliant with The Devops Hispano Challenge (1)
- Full automated
- Infrastructure as Code provision
- DevOps / GitOps (2) mindset
- Multiple cloud targets

## Requirements

- [Teecke devcontrol](https://github.com/teecke/devcontrol) installed (3)

If you want to use `proxmox` as the base cloud provider:

- [Virtualbox](https://www.virtualbox.org) installed (4)
- [Vagrant](https://www.vagrantup.com) installed (5)

## Usage

### Start the base cloud platform

1. Clone this repository
2. Prepare the `config.yml` file from `config.yml.dist` template

```shell
cp config.yml.dist config.yml
```

3. Edit the `config.yml` and set your preferred provider (default: proxmox)
4. Start the platform

```shell
devcontrol start
```

### Prepare the platform tools

- Opnsense
- Zerotier

(TBD)

### Prepare / Start the services in the platform

- Prepare Android builder
- Prepare iOS Builder
- Start Passbolt
- Start Jenkins
  Start Sonar
- Start Nexus

(TBD)

## Draft

- [Cloud providers](base/base.md)
  - Proxmox (for dev local workstation) (6)
  - Kubernetes
  - OpenShift
  - Amazon Web Services
  - Google Cloud Platform
  - Microsoft Azure
- [Platform tools](tools/tools.md)
  - Opnsense
  - Zerotier
- [Services](services/services.md)
  - Passbolt
  - Jenkins
    - Android builder
    - iOS Builder
  - Sonar
  - Nexus

## References and related projects

- Fulfill the [The DevOps Hispano Challenge](https://github.com/devops-hispano/reto-devops]) github project (1)
- Build with [GitOps](https://www.weave.works/technologies/gitops/) Mindset (2)
- Bash Scripts managed used [devcontrol)](https://github.com/teecke/devcontrol) github project (3)
- Proxmox Vagrant Provision with Kairops [Vagrant Virtualbox Proxmox Cluster](https://github.com/kairops/vagrant-virtualbox-proxmox-cluster) project (6)
- Bash auto documentation with Reconquest [shdoc](https://github.com/reconquest/shdoc) project
- Proxmox Base Cloud Provider mounted using:
  - Oracle [Virtualbox](https://www.virtualbox.org) (4)
  - Hashicorp [Vagrant](https://www.vagrantup.com) (5)
