# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.17.1
COPY rollback_one_changeset.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
