# GitHub Action for PHPLint

GitHub Action implementation of the PHPLint Package provided by [https://github.com/overtrue/phplint](https://github.com/overtrue/phplint).

## Usage

You can use it as a Github Action like this:

_.github/main.workflow_
```
workflow "PHP Linting" {
  resolves = ["Execute"]
  on = "pull_request"
}

action "Execute" {
  uses = "idbi/php-lint-gh-action@master"
}

```

Or to use [GitHub Actions](https://github.com/features/actions)

_.github/workflows/phplint.yml_

```
name: PHP Linting

on: pull_request

jobs:
  phplint:

    runs-on: ubuntu-latest

    steps:
        - uses: actions/checkout@v2
        - uses: idbi/php-lint-gh-action@master

```

If provided, a `.phplint.yml` file in the root will be used for configuration during run of the Action.