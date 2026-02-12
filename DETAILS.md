# Details

This repository is for demonstration purposes for how to deploy a Docusaurus application on Pergola. It contains a vanilla Docusaurus site, with no extras and especially no dependencies to or adjustments made for Pergola.

It is fully prepared and ready to be deployed. If you do not have your own Docusaurus Git repository yet, feel free to deploy this one on Pergola for testing.

Here you can see a [Docusaurus deployment on Pergola](https://console.pergola.cloud/pipeline/projects/docusaurus/stages/dev) in action.

## Ingredients

The [Dockerfile](Dockerfile) compiles your Docusaurus app into a portable container image, production ready and served by Nginx.

The [nginx/](nginx/) folder contains a few useful tweaks, especially for properly handling the [trailing slash configuration](https://docusaurus.io/docs/deployment#trailing-slashes).

The [pergola.yaml](pergola.yaml), aka the [Project Manifest](https://docs.pergola.cloud/docs/reference/project-manifest), is the main and the only file specific to Pergola in order to build, deploy and run your Docusaurus app.

The Docusaurus site has been created with this command:

```bash
npx create-docusaurus@latest --javascript site classic
```

Thus, the Docusaurus code is available under [site/](site/), makes it easier to manage. But ofc, this is a matter of taste. If you prefer, you can keep it at top level in your repository.
