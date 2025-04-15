# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "management" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "davide.biancato@horsa.it"
    AccountName  = "aws-20250415"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Root"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "davide.biancato@horsa.it"
    SSOUserFirstName = "Davide"
    SSOUserLastName  = "Biancato"
  }

  account_tags = {
    "ABC:Owner"       = "davide.biancato@horsa.it"
    "ABC:Environment" = "Prod"
    "ABC:Project"     = "LandingZone"
  }

  change_management_parameters = {
    change_requested_by = "Davide Biancato"
    change_reason       = "importing log archive account"
  }

  custom_fields = {
  }

  account_customizations_name = "aws-20250415"
}
