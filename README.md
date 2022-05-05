# cv-website
Provisioned through Terraform and Github Actions pipelines.  
This website uses Azure Storage with a CDN frontend to enforce HTTPS traffic.

### Certification
Terraform deploys an Azure Function that allows me to generate and sign an SSL certificate which is used by the CDN.
This has to be deployed prior to the CDN as I need to manually add an identity to the function and then manually generate the cert.
Here is a link to the module: https://registry.terraform.io/modules/shibayan/keyvault-acmebot/azurerm/latest