#!/bin/bash

# Prompt user for input
read -p "Your Name (e.g., John Doe): " YOURNAME
read -p "Your Email (e.g., john.doe@example.com): " YOUREMAIL
read -p "Galaxy namespace (e.g., rroethof): " NAMESPACE
read -p "Galaxy role name (e.g., systemupdates): " ROLENAME
read -p "Galaxy description (e.g., Ansible role to manage system updates): " DESCRIPTION

echo ""
echo "- Updating role information..."

# Update files with the provided input
sed -i "s/ansibletemplate/$ROLENAME/g" .github/workflows/ci.yml
sed -i "s/ansibletemplate/$ROLENAME/g" .github/workflows/release.yml
sed -i "s/Ronny Roethof <ronny@roethof.net>/$YOURNAME <$YOUREMAIL>/g" meta/main.yml
sed -i "s/A template for creating new Ansible roles/$DESCRIPTION/g" meta/main.yml
sed -i "s/rroethof/$NAMESPACE/g" meta/main.yml
sed -i "s/ansibletemplate/$ROLENAME/g" meta/main.yml
sed -i "s/template-ansible-role/ansible-role-$ROLENAME/g" meta/main.yml
sed -i "s/ansibletemplate/$ROLENAME/g" tasks/main.yml
sed -i "s/ansibletemplate/$ROLENAME/g" tests/test.yml
sed -i "s/ansibletemplate/$ROLENAME/g" vars/main.yml
sed -i "s/ansibletemplate/$ROLENAME/g" handlers/main.yml
sed -i "s/ansibletemplate/$ROLENAME/g" defaults/main.yml
sed -i "s/Template/ansible-role-$ROLENAME/g" README.md
sed -i "s/template-ansible-role/ansible-role-$ROLENAME/g" README.md
sed -i "s/ansibletemplate/$ROLENAME/g" README.md

echo ""
echo "Note:"
echo "This script does not replace specific information, so check the meta/main.yml and README.md for additional updates."
echo "Done! Review the changes before committing."