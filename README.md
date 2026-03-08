# container-images: containerized CLI tools

I keep tools I used/like here. I don't like to install things on my host
so I try to keep my own container image where an official one is not available.


For CLI tools I also provide a wrapper script so the tools can be easily deployed without
installation.

## Tools

| Tool | Description | Home Page | Source |
|------|-------------|-----------|--------|
|`aws` | AWS CLI | [https://aws.amazon.com/cli/](https://aws.amazon.com/cli/) | Built from image `Containerfile` in this repo |
|`cdk` | AWS CDK | [https://aws.amazon.com/cdk/](https://aws.amazon.com/cdk/) | Built from image `Containerfile` in this repo |
|`cargo` | Rust package manager | [https://www.rust-lang.org/](https://www.rust-lang.org/) | Official `rust:latest-slim` image from Dockerhub |
|`cosign` | Container image signing tool | [https://github.com/sigstore/cosign](https://github.com/sigstore/cosign) | Built from image `Containerfile` in this repo |
|`doctl` | DigitalOcean CLI | [https://docs.digitalocean.com/reference/doctl/](https://docs.digitalocean.com/reference/doctl/) | Built from image `Containerfile` in this repo |
|`flarectl` | Cloudflare CLI | [https://github.com/cloudflare/cloudflare-go](https://github.com/cloudflare/cloudflare-go) | Built from image `Containerfile` in this repo |
|`gh` | GitHub CLI | [https://cli.github.com/](https://cli.github.com/) | Built from image `Containerfile` in this repo |
|`iotop` | IO Monitoring Tool | [http://guichaz.free.fr/iotop/](http://guichaz.free.fr/iotop/) | Built from image `Containerfile` in this repo |
|`bundle`, `jekyll`, `gem` | Jekyll static site generator | [https://github.com/jekyll/jekyll](https://github.com/jekyll/jekyll) | Built from image `Containerfile` in this repo |
|`node`, `npm` | JavaScript Runtime and Package Management | [https://nodejs.org](https://nodejs.org) | Official image from Dockerhub |
|`pandoc` | Universal document converter | [https://hackage.haskell.org/package/pandoc](https://hackage.haskell.org/package/pandoc) | Built from image `Containerfile` in this repo |
|`qbittorrent` | qBittorrent headless daemon | [https://www.qbittorrent.org/](https://www.qbittorrent.org/) | Built from image `Containerfile` in this repo |
|`shellcheck` | Shell script analysis tool | [https://www.shellcheck.net/](https://www.shellcheck.net/) | Built from image `Containerfile` in this repo |
|`tmpshell` | Disposable dev environment shell | — | Built from image `Containerfile` in this repo |
|`watch_gha_runs` | Nifty script to show status of GitHub Actions | [https://github.com/nedbat/watchgha](https://github.com/nedbat/watchgha) | Built from image in this repo |

## How to use?

1. Make sure you have a recent version of `podman`
1. Get the script for the tool you want from the `bin/` directory
2. Put it in your `PATH`
3. Hope it works! - there's probably some container-related edge cases but I have tried to make the wrappers transparent

Here's the quick command I use to get everything in place: `cp -rp bin/* ~/.local/bin`

## Building images

Images are managed with the `imgctl` script:

```
# Build a single image
./imgctl build images/<name>

# Build all autopublish images
./imgctl build all

# Publish a single image to its registries
./imgctl publish images/<name>

# List all images and their publish status
./imgctl list
```
