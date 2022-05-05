# cv-website
Provisioned through Terraform and Github Actions pipelines.
This website uses Azure Storage with a CDN frontend to enforce HTTPS traffic.
Terraform deploys an Azure Function that allows me to generate and sign an SSL certificate which is used by the CDN.