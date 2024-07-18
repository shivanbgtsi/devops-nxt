#!/bin/sh

: '
  Verify the ami build prerequisites
  These specs require https://shellspec.info to run.
'

Describe "Demo prerequisites"

  Describe "in AWS parameter store"
      It "Semarchy value exists - $RDS"
        When call aws_ssm_by_path "$RDS"
        The output should include "pass"
    End
      It "Artifactory password exists - $RDS"
        When call aws_ssm_by_path "$RDS"
        The output should include "pass"
    End
  End
End
