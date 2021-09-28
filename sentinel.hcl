module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "enforce-mandatory-labels" {
    source = "./mandatory-labels.sentinel"
    enforcement_level = "advisory"
}

policy "restrict-gce-machine-type" {
    source = "./restrict-machine-type.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "enforce-mandatory-dataproc" {
    source = "./mandatory-labels-dataproc.sentinel"
    enforcement_level = "advisory"
}