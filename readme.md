# TEP Jenkins

The Jenkins image for TEP.

## Plugin Documentation

* https://github.com/jenkinsci/hashicorp-vault-plugin#configuration-as-code
* https://github.com/jenkinsci/job-dsl-plugin/wiki/JCasC

### Configuration as Code

Yaml in `config/` will be passed to the configuration as code plugin.
Configuration can be exported: `http://localhost:8080/configuration-as-code/export`.
