# RealFire Cloudflare

Cloudflare configurations, deployed as code!

## Resources
I don't yet manage all kinds of Cloudflare resources with Terraform only these:

- DNS Records
- Email routing rules
- Email routing settings
- Email forwarding addresses

All other resources are managed from the Cloudflare UI.

## Domains
- protectedpii.com
- realfire.au
- realfire.cloud
- realfire.dev
- realfire.link
- realfire.network


## Testing a change
To execute a Terraform plan to see dry run of the changes that will be made. Additionally when a merge request is created a pipeline will run a terraform plan and report the status in the merge request.

## Terraform Remote State
States are stored in cloudflare KV using [worker-tfstate](https://github.com/RealFireAU/worker-tfstate).
See [Cloudflare Dashboard](https://dash.cloudflare.com/1d7d6183d5d2ed67e5bc93e444e4113e/workers/services/view/worker-tfstate/production)

## Manual changes
Changes may need to made manually & quickly in certain circumstances. Terraform will leave manaully created resources alone (i.e. won't destroy them). But, if you have made a change manually (either while testing or defending an attack), please make sure that you persist the change to this repository as soon as possible.

## Deployment
Deployment is done via GitHubs actions.\
Upon opening a merge request a pipeline will run a terraform plan and report the status in the merge request as a comment.\
Upon merging a merge request a pipeline will run a terraform apply and report the status in the merge request as a comment.

## Formatting
Formatting is manditory, if you don't format your code it will fail the pipeline.\
Please format all Terraform files before committing by running:
```
$ terraform fmt
```
