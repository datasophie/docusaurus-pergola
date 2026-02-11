# Deploy a Docusaurus on Pergola

[Docusaurus](https://docusaurus.io/) is a great framework to build optimized websites, blogs and beautiful documentation sites for your products.

[Pergola](https://docs.pergola.cloud/docs/overview) is a deployment and runtime platform for web and server applications, a high-availability cluster with automatic scaling and failover, fully managed TLS certificates and much more.

You can deploy a Docusaurus site on Pergola in a matter of minutes.

## Deployment Steps

You need a Git repository with your Docusaurus code, like [here](site/), and:

* If you do not have a `Dockerfile` in your repo yet, you can copy [from here](Dockerfile) and adapt as needed
* Add a `pergola.yaml` to your repo's root directory, the Project Manifest that describes your app, which you can copy [from here](pergola.yaml)

👍 Your app is prepared. Now head over to [Pergola](https://console.pergola.cloud/) and deploy:

* Create a [new Project](https://console.pergola.cloud/pipeline/projects) and provide your Git repository's clone URL
  > you can also use this repo for testing
* Start a new Build
  > this will scan all branches for a valid `pergola.yaml`
* Create a new Stage of type `dev`
  > this will be the runtime environment for your Docusaurus app
* Once the Build finishes successfully, navigate to the Stage created above
* Now hit `NEW RELEASE` and select the Build just finished
* ... and `DEPLOY`

🚀 That's it! Your Docusaurus is live at the URL Pergola has provided.

Want to learn more about [Projects](https://docs.pergola.cloud/docs/reference/projects), [Stages](https://docs.pergola.cloud/docs/reference/stages), [Releases](https://docs.pergola.cloud/docs/reference/releases)...?
Here is the Pergola [documentation](https://docs.pergola.cloud), built with Docusaurus, of course ❤️

## This Repository

This repository is for demonstration purposes for how to deploy a Docusaurus application on Pergola. It contains a vanilla Docusaurus site, with no extras and especially no dependencies to or adjustments made for Pergola.

It is fully prepared and ready to be deployed. If you do not have your own Docusaurus Git repository yet, feel free to deploy this one on Pergola for testing.

These are the ingredients of this repo:

The [Dockerfile](Dockerfile) compiles your Docusaurus app into a portable container image, production ready and served by Nginx.

The [nginx/](nginx/) folder contains a few useful tweaks, especially for properly handling the [trailing slash configuration](https://docusaurus.io/docs/deployment#trailing-slashes).

The [pergola.yaml](pergola.yaml), aka the [Project Manifest](https://docs.pergola.cloud/docs/reference/project-manifest), is the main and the only file specific to Pergola in order to build, deploy and run your Docusaurus app.

The Docusaurus site has been created with this command:

```bash
npx create-docusaurus@latest --javascript site classic
```

Thus, the Docusaurus code is available under [site/](site/), makes it easier to manage. But ofc, this is a matter of taste. If you prefer, you can keep it at top level in your repository.

## Contributing

Pull requests are always welcome! Thank you.
