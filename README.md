# Generic Platform

## Objective

Build a set of pieces able to act as a Cloud Training Lab. Key points:

- Compliant with The Devops Hispano Challenge (1)
- Full automated
- Infrastructure as Code provision
- DevOps / GitOps (2) mindset
- Multiple cloud targets

## Draft

- Cloud providers
  - Proxmox (for dev local workstation) (3)
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

## References and related projects

- Fulfill the [The DevOps Hispano Challenge](https://github.com/devops-hispano/reto-devops]) project (1)
- Build with [GitOps](https://www.weave.works/technologies/gitops/) Mindset (2)
- Proxmox Vagrant Provision with Kairops [Vagrant Virtualbox Proxmox Cluster](https://github.com/kairops/vagrant-virtualbox-proxmox-cluster) project (3)
- Bash auto documentation with Reconquest [shdoc](https://github.com/reconquest/shdoc) project
