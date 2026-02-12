# Deploy a Docusaurus on Pergola

[Pergola](https://docs.pergola.cloud/docs/overview) is a deployment and runtime platform for web and server applications, a high-availability cluster with auto-scaling, failover handling, fully managed TLS certificates and much more.

[Docusaurus](https://docusaurus.io/) is a great framework to build optimized websites, blogs and beautiful documentation sites for your products.

You can deploy your Docusaurus site on Pergola in a matter of minutes, just follow the steps below.

## Deployment Steps

You need a Git repository with your Docusaurus code and:

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

🚀 **That's it! Your Docusaurus is live at the URL Pergola has provided.**

Here is a live example:
https://docusaurus-docusaurus-dev.apps.pergola.cloud/

Want to learn more about [Projects](https://docs.pergola.cloud/docs/reference/projects), [Stages](https://docs.pergola.cloud/docs/reference/stages), [Releases](https://docs.pergola.cloud/docs/reference/releases)...?
Here is the Pergola [documentation](https://docs.pergola.cloud), built with Docusaurus, of course ❤️

## Contributing

Pull requests are always welcome! Thank you.
