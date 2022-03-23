# Helm chart values

# Required

```
env: dev (Not in schema, need to be added to protocol)
region: "us-east1"

wordpress:
  adminCreds:
    managementEmail: admin@cloudways.com #(in use in chart)
    password: password #(in use in chart)

db:
  password: "alskdm"
```

# Optional

```
tier: low
wordpress:
  adminCreds:
    displayName: Admin #(not in use in chart, could be removed from protocol)
    userLogin: wp-admin #(not in use in chart, could be removed from protocol)
    managementName: admin #(not in use in chart)
  timeZone: "Europe/London"
  phpParams:
    log_errors: "on"
    memory_limit: "1024M"
    max_execution_time: "600"
    date_timezone: "UTC"
    max_input_time: "300"
    post_max_size: 100M
    upload_max_filesize: 100M
    max_input_vars: "3000"
    max_file_uploads: "20"
    display_errors: "off"
    opcache_memory_consumption: 128
    opcache_interned_strings_buffer: 8
    opcache_max_accelerated_files: 4000
    opcache_revalidate_freq: 2
    opcache_fast_shutdown: 1
sshd:
  credentials:
  - name: "username"
    password: "password"
```
