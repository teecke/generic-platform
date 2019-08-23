# Generic Platform

## Objective

Build a set of pieces able to act as a Cloud Training Lab. Key points:

- Full automated
- Infrastructure as Code provision
- DevOps / GitOps mindset
- Multiple cloud target

## Draft

- Cloud providers
  - Proxmox (dev local workstation), with Kairops [Vagrant Virtualbox Proxmox Cluster project](https://github.com/kairops/vagrant-virtualbox-proxmox-cluster)
  - Kubernetes
  - OpenShift
  - Amazon Web Services
  - Google Cloud Platform
  - Microsoft Azure
- Platform tools
  - Opnsense
  - Zerotier
- Services
  - Passbolt
  - Jenkins
    - Android builder
    - iOS Builder
  - Sonar
  - Nexus
