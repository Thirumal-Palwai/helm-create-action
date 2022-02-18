# helm-create-action

A GitHub action to create the helm chart.

Note: 
This action creates an example chart, values need to be filled in values.yaml file. 

## Action input parameters

| Parameter   | Description                                        | Required | Comment                                     |
| ----------- | -------------------------------------------------- | -------- | ------------------------------------------- |
| [ChartName] | [The name of your helm chart ]                     |   [yes]  | [Folder will be created with the same name] |
| [Path]      | [Path where you want to create the chart folder]   |   [No]   | [This is an optional parameter]             |

## Usages
Can be used as part of template at the time of repository creation.

### Invoke the action while creating new branch/tag

```yml
name: helm chart creation
on:
  create

jobs:
  Execute:
    runs-on: [self-hosted, linux, x64, centos8, devops, poc]
    steps:
    - name: checkout
      uses: actions/checkout@master
    - name: "create helm chart"
      uses: philips-internal/helm-create-action@v1.0.0
      with:
        ChartName: "foo"
        Path: "/test/charts"
```
