# Liquibase Rollback One Changeset Action
Official GitHub Action to run Liquibase Rollback One Changeset in your GitHub Action Workflow. For more information on how rollback one changeset works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Rollback One Changeset
[PRO]
Rollback one changeset from the database
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/rollback-one-changeset@v4.20.0
  with:
    # The root changelog
    # string
    # Required
    changelogFile: ""

    # The JDBC target database connection URL
    # string
    # Required
    url: ""

    # Fully-qualified class which specifies a ChangeExecListener
    # string
    # Optional
    changeExecListenerClass: ""

    # Path to a properties file for the ChangeExecListenerClass
    # string
    # Optional
    changeExecListenerPropertiesFile: ""

    # The author of the changeset to rollback
    # string
    # Optional
    changesetAuthor: ""

    # The id of the changeset to rollback
    # string
    # Optional
    changesetId: ""

    # The target database password
    # string
    # Optional
    changesetPath: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # A required safety flag to indicate you intend to use this feature
    # bool
    # Optional
    force: ""

    # The target database password
    # string
    # Optional
    password: ""

    # The path to the script to use to perform the rollback
    # string
    # Optional
    rollbackScript: ""

    # The target database username
    # string
    # Optional
    username: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase rollback one changeset action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/rollback-one-changeset@v4.20.0
    with:
      changelogFile: ""
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
