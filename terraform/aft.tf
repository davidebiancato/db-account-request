# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "aft" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "aws.20250415-aft@gmail.com"
    AccountName  = "AFT"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "AFT"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "do-not-use@example.com"
    SSOUserFirstName = "do-not-use"
    SSOUserLastName  = "do-not-use"
  }

  account_tags = {
    "ABC:Owner"       = "aws.20250415-aft@gmail.com"
    "ABC:Environment" = "Prod"
    "ABC:Project"     = "LandingZone"
  }

  change_management_parameters = {
    change_requested_by = "Davide Biancato"
    change_reason       = "importing log archive account"
  }

  custom_fields = {
  }

  account_customizations_name = "AFT"
}
