#!/bin/sh

: '
  Verify the ami build prerequisites
  These specs require https://shellspec.info to run.
'

Describe "Demo prerequisites"

  Describe "in AWS parameter store"
      It "RDS password exists - $RDS"
        When call aws_ssm_by_path "/dev/rds"
        The output should include "pass"
    End
      It "RDS user name exists - /dev/rds"
        When call aws_ssm_by_path "/dev/rds"
        The output should include "username"
    End
  End
End

