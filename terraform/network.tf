# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "network" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "aws.20250415+network@gmail.com"
    AccountName  = "network"
    # Syntax for top-level OU
    # ManagedOrganizationalUnit = "Foundation"
    # Syntax for nested OU
    ManagedOrganizationalUnit = "Foundational"
    SSOUserEmail              = "davide.biancato@horsa.it"
    SSOUserFirstName          = "Davide"
    SSOUserLastName           = "Biancato"
  }

  account_tags = {
    "ABC:Owner"       = "aws.20250415+network@gmail.com"
    "ABC:Environment" = "Prod"
    "ABC:Project"     = "LandingZone"
  }

  change_management_parameters = {
    change_requested_by = "John Doe"
    change_reason       = "network account creation"
  }

  custom_fields = {
  }

  account_customizations_name = "network"
}
