Step-1: Clone the repo 
step-2: Navigate to the repo directory 
# cd gremlin
Step-3: Now navigate to the project_and_storage directory to create the gcp project and 
storage bucket for backend. if you want to use your existing project and 
storage bucket for buckend then skip step 3 to step 4 and continue from Step-7
# cd project_and_storage
Step3a: Update the required project details in terraform.tfvars file and save it.
Step-4: Initialize the working directory containing TF files (do not forget to update the required project details in terraform.tfvars file before terraform init)
# terraform init
step-5: (Optional) plan and review the changes
# terraform plan
Step-6: Apply the changes
# terraform apply 
After the successfull apply, We have created a project and storage bucket for backend. 
Step-7: Now update terraform.tfvars and backend.tf in both infrastructure_creation and 
api-permission directory files before initialize(terraform init) that working directories.
Step-7a: Now navigate to the api-permission directory to enable the required apis for this task (do not forget to update the required project details in terraform.tfvars file before terraform init)
# cd .. (skip this if not applicable)
# cd api-permission
Step-8: Initialize the working directory containing TF files
# terraform init
step-9: (Optional) plan and review the changes
# terraform plan
Step-10: Apply the changes
# terraform apply 
and confirm by typing "YES" & press Enter, Now we have enabled the required API's
Step-11: Navigate to infrastructure_creation folder to create the gke cluster (do not forget to update the required project details in terraform.tfvars file before terraform init)
# cd ..
# cd infrastructure_creation
Step-12: Follow Step-8 to Step-10 and you are done :)

