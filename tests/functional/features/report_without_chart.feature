Feature: Report only submission
    Partners or redhat associates can publish their chart by submitting
    error-free report that was generated by chart-verifier.

    Scenario: The partner hashicorp submits a error-free report for the vault chart
        Given hashicorp is a valid partner
        And hashicorp has created a error-free report
        When hashicorp sends a pull request with the report
        Then hashicorp sees the pull request is merged
        And the index.yaml file is updated with an entry for the submitted chart

    Scenario: The redhat associate submits a error-free report for the vault chart
        Given a redhat associate has a valid identity
        And the redhat associate has created a report without any errors
        When the redhat associate sends the pull request with the report
        Then the redhat associate sees the pull request is merged
        And the index.yaml file is updated with an entry for the submitted chart