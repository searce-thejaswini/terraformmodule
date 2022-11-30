# module "serviceaccount1" {
#     source = "../modules/sa_rolebinding" 
#     service_account_id = var.serviceaccountbinding
#     project_id = var.project_id
  
# }

# module "serviceaccount2" {
#     source = "../modules/sa_rolebinding" 
#     service_account_id = var.serviceaccountbinding1
#     project_id = var.project_id
  
# }

# module "serviceaccount3" {
#     source = "../modules/sa_rolebinding" 
#     service_account_id = var.serviceaccountbinding2
#     project_id = var.project_id
  
# }

module "rolebindingtf_sa" {
 source = "../modules/sa_rolebinding"
 project_id = "pubsubdemo-368610"
 role_id     = "terraform_serviceaccount_12"
 title       = "My test Role"
 permissions = [ "iam.roles.list", "iam.roles.create", "iam.roles.delete" ]
 members = ["serviceAccount:terraformsakey@pubsubdemo-368610.iam.gserviceaccount.com"]
  
}
