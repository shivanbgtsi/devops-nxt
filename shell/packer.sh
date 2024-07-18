#!/bin/sh

: '
  Verify the ami build prerequisites for
  EPH Semarchy IAC deploy pipelines.
  These specs require https://shellspec.info to run.
'

Describe "EPH Semarchy prerequisites"

  Describe "in AWS parameter store"
      It "Semarchy value exists - $SEMARCHY_VERSION"
        When call aws_ssm_by_path "$SEMARCHY_VERSION"
        The output should include "version"
    End
      It "Artifactory password exists - $ARTIFACTORY_PASSWORD"
        When call aws_ssm_by_path "$ARTIFACTORY_PASSWORD"
        The output should include "artifactory_password"
    End
  End
End
