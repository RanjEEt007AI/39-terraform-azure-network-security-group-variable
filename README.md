# 🔐 Terraform Azure Network Security Group (NSG)

A simple Terraform project to create an Azure Network Security Group (NSG) with security rules using variables. 
This project demonstrates Infrastructure as Code (IaC) using Terraform and Azure.

---

## 🚀 Features

✅ Create Azure Resource Group
✅ Create Azure Network Security Group (NSG)
✅ Configure custom security rules
✅ Variable-based configuration
✅ Reusable Terraform code
✅ Beginner-friendly project structure

---

## 📁 Project Structure

```text id="l7xt95"
terraform-azure-network-security-group/
│── provider.tf
│── variables.tf
│── main.tf
│── terraform.tfvars
│── .gitignore
│── README.md
```

---

## 🛠 Prerequisites

Before using this project, install:

* Terraform
* Azure CLI
* Azure Account

Login to Azure:

```bash id="4x52hs"
az login
```

---

## 📄 Terraform Configuration

This project creates:

* Resource Group
* Network Security Group (NSG)
* Security Rule

Example `terraform.tfvars`:

```hcl id="b0knlu"
resource_group_name        = "ranjeet-my-rg"
location                   = "Central India"

nsg_name                   = "ranjeet-my-nsg"

security_rule_name         = "Allow-RDP"
priority                   = 100
direction                  = "Inbound"
access                     = "Allow"
protocol                   = "Tcp"

source_port_range          = "*"
destination_port_range     = "3389"

source_address_prefix      = "*"
destination_address_prefix = "*"
```

---

## 🔒 Security Rule Details

| Property         | Value     |
| ---------------- | --------- |
| Rule Name        | Allow-RDP |
| Direction        | Inbound   |
| Access           | Allow     |
| Protocol         | TCP       |
| Destination Port | 3389      |

---

## ▶️ Usage

Initialize Terraform:

```bash id="pq13jt"
terraform init
```

Review execution plan:

```bash id="m0yw70"
terraform plan
```

Deploy infrastructure:

```bash id="yy6wfm"
terraform apply
```

Destroy resources:

```bash id="sw1nll"
terraform destroy
```

---

## 📤 Outputs

Terraform returns:

* NSG Name
* NSG ID

Example output:

```bash id="qefk72"
network_security_group_name = "my-nsg"

network_security_group_id = "/subscriptions/xxxx/resourceGroups/my-rg/providers/Microsoft.Network/networkSecurityGroups/my-nsg"
```

---

## 🔒 .gitignore

Recommended `.gitignore`:

```gitignore id="bhbd48"
.terraform/
*.tfstate
*.tfstate.*
*.tfvars
*.tfvars.json
crash.log
.vscode/
```

Note: Keep `terraform.lock.hcl` in GitHub repository.

---

## 📚 Technologies Used

* Terraform
* Microsoft Azure
* Azure Network Security Group (NSG)
* Infrastructure as Code (IaC)

---

## ⭐ Author

Ranjeet Kumar

If this project helped you, give it a star ⭐
