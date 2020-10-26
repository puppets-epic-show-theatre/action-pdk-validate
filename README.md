# action-pdk-validate

This action runs `pdk validate` on your puppet module codebase and fails the step if there are test failures.

## Usage

To use the action add the following step to your workflow file (e.g. `.github/workflows/main.yml`)

```yaml
name: Run static validation

on:
  - push
  - pull_request

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - name: Clone repository
      uses: actions/checkout@v2

    - name: Run static validation and save report to junit xml
      uses: puppet-enterprise-support-team/action-pdk-validate@v1
```
