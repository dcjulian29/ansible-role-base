#!/bin/sh

git config --global --add safe.directory ${containerWorkspaceFolder}

pip install ansible ansible-lint docker molecule toml passlib

cd ${containerWorkspaceFolder}

ansible-galaxy collection install -r requirements.yml

ansible-galaxy install -r requirements.yml
