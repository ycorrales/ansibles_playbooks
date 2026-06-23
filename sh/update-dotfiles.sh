#! /usr/bin/env bash

THIS_SCRIPT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]:-0}")" &>/dev/null && pwd -P)

cd "$THIS_SCRIPT_PATH/.." || exit 1
ansible-playbook playbooks/dotfiles-update.yml --ask-vault-pass -i hosts -l lanl
