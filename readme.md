# TEP Jenkins

The Jenkins image for TEP.

## Docker Run

### Environment Variables

* ADMIN_USERNAME
* ADMIN_PASSWORD
* VAULT_ROLE_ID
* VAULT_SECRET_ID
* SSH_PRIVATE_KEY
* URL

## Plugin Documentation

* https://github.com/jenkinsci/hashicorp-vault-plugin#configuration-as-code
* https://github.com/jenkinsci/job-dsl-plugin/wiki/JCasC

### Configuration as Code

Yaml in `config/` will be passed to the configuration as code plugin.
Configuration can be exported: `http://localhost:8080/configuration-as-code/export`.
