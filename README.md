# Deploy a Docusaurus on Pergola

[Docusaurus](https://docusaurus.io/) is a great framework to build optimized websites, blogs and beautiful documentation sites for your products.

You can deploy a Docusaurus site within a few minutes on [Pergola](https://docs.pergola.cloud/docs/overview).

## Deployment Steps

You need your Docusaurus code in a Git repository, like [here](site/), including:

* If you do not have a `Dockerfile` yet, add one to your repo; you can copy [from here](Dockerfile) and adapt as needed
* Add a `pergola.yaml`, the Project Manifest that describes your app for Pergola; you can copy [from here](pergola.yaml) and place it under your repo's root directory

👍 Your app is prepared for Pergola. Now proceed to [Pergola](https://console.pergola.cloud/) and deploy:

* Create a [new Project](https://console.pergola.cloud/pipeline/projects) and provide your Git repository's clone URL
  > you can also use this repo for testing
* Start a new Build
  > This will scan all branches for a valid `pergola.yaml`
* Create a new Stage of type `dev`
  > This will be the runtime environment for your Docusaurus app
* Once the Build has finished successfully, navigate to the just created Stage
* Now hit `NEW RELEASE` and select the just finished Build
* ... and `DEPLOY`

🚀 That's it! Your Docusaurus is live on the URL Pergola has just provided, with fully managed TLS certificates, running on a high-availability cluster.

Want to learn more about [Projects](https://docs.pergola.cloud/docs/reference/projects), [Stages](https://docs.pergola.cloud/docs/reference/stages), [Releases](https://docs.pergola.cloud/docs/reference/releases)...? Here is the Pergola [documentation](https://docs.pergola.cloud), built with Docusaurus, of course ❤️

## This Repository

This repository is for demonstration purposes for how to deploy a Docusaurus application on Pergola. It contains a vanilla Docusaurus site, without no extras and especially no dependencies to or adjustments made for Pergola.

It is fully prepared and ready to be deployed. If you do not have your own Docusaurus repository yet, feel free to deploy this one on Pergola for testing.

These are the ingredients of this repo:

The [Dockerfile](Dockerfile) compiles your Docusaurus app into a portable container image, production ready and served by Nginx.

The [pergola.yaml](pergola.yaml), aka the [Project Manifest](https://docs.pergola.cloud/docs/reference/project-manifest), is the main and the only file needed by Pergola in order to build, deploy and run your Docusaurus app.

The Docusaurus site has been created with this command:

```bash
npx create-docusaurus@latest --javascript site classic
```

Thus, the Docusaurus code is available under [site/](site/), makes it easier to manage. But ofc, this is a matter of taste. If you prefer, you can keep it at top level in your repository.

The [nginx/](nginx/) folder contains a few useful settings, especially for properly handling the [trailing slash configuration](https://docusaurus.io/docs/deployment#trailing-slashes).

## Contributing

Pull requests are always welcome! Thank you.
