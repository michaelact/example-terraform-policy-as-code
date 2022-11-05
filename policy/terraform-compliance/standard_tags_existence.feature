Feature: Test tagging compliance
    Scenario: Ensure that tags have Environment defined
        Given I have resource that supports tags defined
        Then it must contain tags
        Then it must contain "Environment"
        And its value must match the "^(staging|production|development)$" regex

    Scenario: Ensure that tags have Project defined
        Given I have resource that supports tags defined
        Then it must contain tags
        Then it must contain "Project"
        And its value must match the "^(sparta|empire|nightwolf)$" regex

    Scenario: Ensure that tags have Terraform defined
        Given I have resource that supports tags defined
        Then it must contain tags
        Then it must contain "Terraform"
        And its value must be "true"
