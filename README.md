# Ansible Role: base

[![Lint](https://github.com/dcjulian29/ansible-role-base/actions/workflows/lint.yml/badge.svg)](https://github.com/dcjulian29/ansible-role-base/actions/workflows/lint.yml) [![GitHub Issues](https://img.shields.io/github/issues-raw/dcjulian29/ansible-role-base.svg)](https://github.com/dcjulian29/ansible-role-base/issues)

This an Ansible role to be used as the base of my systems. In this role, is the basic setup I expect from every system I manage. It should not be considered a "general purpose" role but you are free to use and/or fork it for your own environment.

## Requirements

- None

## Installation

To use, use `requirements.yml` with the following git source:

```yaml
---
roles:
- name: dcjulian29.base
  src: https://github.com/dcjulian29/ansible-role-base.git
  version: main
  ```

Then download it with `ansible-galaxy`:

```shell
ansible-galaxy install -r requirements.yml
```

## Dependencies

- None
