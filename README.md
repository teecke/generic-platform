# Generic Platform

## Objective

Build a set of pieces able to act as a Cloud Training Lab. Key points:

- Full automated
- Infrastructure as Code provision
- DevOps / GitOps mindset
- Multiple cloud target

## Draft

- Cloud providers
  - Proxmox (dev local workstation)
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

## References

- Bash auto documentation with Reconquest [shdoc](https://github.com/reconquest/shdoc) project
- Proxmox Vagrant Provision with Kairops [Vagrant Virtualbox Proxmox Cluster](https://github.com/kairops/vagrant-virtualbox-proxmox-cluster) project
