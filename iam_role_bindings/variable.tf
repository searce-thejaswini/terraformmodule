# variable "service_account_id" {
    #     type = string  
    # }

variable "project_id" {
  type = string
}

# variable "serviceaccountbinding" {
#   type = string
# }

# variable "serviceaccountbinding1" {
#   type = string
# }

# variable "serviceaccountbinding2" {
#   type = string
# }

variable "role_id" {
  type = string
}

variable "title" {
  type = string
}

variable "permissions" {
  type = list(string)
}

variable "members" {
  type = list(string)
}

