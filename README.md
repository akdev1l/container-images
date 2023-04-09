# container-images: containerized CLI tools

I keep tools I used/like here. I don't like to install things on my host
so I try to keep my own container image where an official one is not available.


For CLI tools I also provide a wrapper script so the tools can be easily deployed without
installation.

## Tools

1. `awscdk` - AWS CDK CLI for creating AWS Infrastructure
1. `ghcli` - GitHub CLI for interacting with GitHub
1. `watch_gha_runs` - Nifty script to show status of GitHub Actions

```
images/
├── awscdk
├── ghcli
└── watch_gha_runs
```
