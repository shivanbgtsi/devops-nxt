#!/bin/sh
set -eu

# Given a path, obtain the parameters under that path from parameter store.
aws_ssm_by_path() {
  echo "ssm params"
  aws ssm get-parameters-by-path --region ap-south-1 --output text --path "$1" --query "Parameters[*].{Name:Name,Value:Value}";
}
