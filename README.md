
# Ansible Role: Template

[![CI](https://github.com/rroethof/template-ansible-role/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/rroethof/template-ansible-role/actions/workflows/ci.yml)
![GitHub last commit](https://img.shields.io/github/last-commit/rroethof/template-ansible-role)
![GitHub Issues or Pull Requests](https://img.shields.io/github/issues/rroethof/template-ansible-role)
![Ansible Role](https://img.shields.io/ansible/role/d/rroethof/template-ansible-role)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

[![github](https://img.shields.io/badge/GitHub-rroethof-181717.svg?style=flat&logo=github)](https://github.com/rroethof)
[![twitter](https://img.shields.io/badge/Twitter-@rroethof-00aced.svg?style=flat&logo=twitter)](https://twitter.com/rroethof)
[![website](https://img.shields.io/badge/Website-RonnyRoethof-5087B2.svg?style=flat&logo=telegram)](https://roethof.net)
[![website](https://img.shields.io/badge/Resume-RonnyRoethof-5087B2.svg?style=flat&logo=telegram)](https://ronnyroethof.nl)

> **A reusable Ansible role template for quickly starting new roles with best practices, CI, and Molecule testing.**

---

## Table of Contents

- [Ansible Role: Template](#ansible-role-template)
  - [Table of Contents](#table-of-contents)
  - [Supported Platforms](#supported-platforms)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Role Variables](#role-variables)
  - [Dependencies](#dependencies)
  - [Example Playbook](#example-playbook)
  - [Testing](#testing)
    - [Running Tests Locally](#running-tests-locally)
  - [CI Pipeline](#ci-pipeline)
  - [License](#license)
  - [Changelog](#changelog)
  - [Security](#security)
  - [Contributing](#contributing)
  - [Issues \& Support](#issues--support)

This repository provides a template for creating new Ansible roles, including:

- A recommended directory structure
- Example Molecule scenarios for testing
- CI integration (GitHub Actions)
- Documentation and best practices

**To customize this template for your own role, run the provided [`rename.sh`](https://github.com/rroethof/template-ansible-role/blob/main/rename.sh) script. This will update the role name, author, namespace, and related information throughout the project.**

## Supported Platforms

- **Debian**
  - Debian 12 (Bookworm)
  - Debian 13 (Trixie)
- **Ubuntu**
  - Ubuntu 22.04 LTS (Jammy)
  - Ubuntu 24.04 LTS (Noble)
- **Enterprise Linux**
  - EL 9

## Requirements

- Ansible >= 2.10
- Python 3.x
## Installation

Install this role from Ansible Galaxy:

```
ansible-galaxy install rroethof.ansibletemplate
```

## Role Variables

Default values are defined in [`defaults/main.yml`](https://github.com/rroethof/template-ansible-role/blob/main/defaults/main.yml):

```
# Example variable
template_example_variable: "default_value"
```

See the file for all available variables and their descriptions.

## Dependencies

None.

## Example Playbook

This example is taken from [`molecule/default/converge.yml`](https://github.com/rroethof/template-ansible-role/blob/main/molecule/default/converge.yml) and is tested on each push, pull request, and release:

```
- name: Converge
  hosts: all
  become: yes
  gather_facts: yes
  roles:
    - role: rroethof.ansibletemplate
```

## Testing

This role is tested using [Molecule](https://molecule.readthedocs.io/) with the following matrix:

- Debian 12
- Ubuntu 22.04

### Running Tests Locally

1. Install Python dependencies:

   ```
   python -m pip install --upgrade -r requirements.txt
   ```

2. Run tests for a specific distribution:

   ```
   # For Debian 12
   $env:MOLECULE_DISTRO="debian12"; molecule test

   # For Ubuntu 22.04
   $env:MOLECULE_DISTRO="ubuntu2404"; molecule test
   ```


The CI pipeline automatically tests all supported distributions on each push and pull request.

## CI Pipeline

Continuous Integration is provided via [GitHub Actions](https://github.com/rroethof/template-ansible-role/blob/main/.github/workflows/ci.yml):

- **Linting:** Runs yamllint and ansible-lint to check YAML and Ansible code quality.
- **Molecule Testing:** Runs Molecule tests in Docker for each supported distribution (Debian 12, Ubuntu 24.04, etc.).
- **(Optional) Galaxy Import:** The workflow includes a commented-out job to automatically import the role to Ansible Galaxy when changes are pushed to the main branch. To enable this, simply ensure you have set the **`GALAXY_API_KEY`** secret in your repository settings.

All pushes, pull requests, and releases are tested using Molecule. This ensures your role remains linted and tested across supported platforms.

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/rroethof/template-ansible-role/blob/main/LICENSE) file for details.

## Changelog

See [CHANGELOG.md](https://github.com/rroethof/template-ansible-role/blob/main/CHANGELOG.md) for a list of all notable changes to this project.

## Security

Please see our [Security Policy](https://github.com/rroethof/template-ansible-role/blob/main/SECURITY.md) for reporting vulnerabilities.

## Contributing

Contributions are welcome! Please read our [Contributing Guide](https://github.com/rroethof/template-ansible-role/blob/main/CONTRIBUTING.md) and [Code of Conduct](https://github.com/rroethof/template-ansible-role/blob/main/CODE_OF_CONDUCT.md) before submitting a Pull Request.

---

## Issues & Support

If you have any questions, feature requests, or find a bug, please [open an issue](https://github.com/rroethof/template-ansible-role/issues).

---
  
<sub>Author: Ronny Roethof ([ronny@roethof.net](mailto:ronny@roethof.net))</sub>
