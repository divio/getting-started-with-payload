# Getting Started with Payload

[![Deploy to Divio](https://docs.divio.com/deploy-to-divio.svg)](https://control.divio.com/app/new/?template_url=https://github.com/divio/getting-started-with-payload/archive/refs/heads/main.zip)

> [!WARNING]  
> This template is based on the [Beta version of Payload](https://payloadcms.com/blog/30-beta-install-payload-into-any-nextjs-app-with-one-line). We recommend using it for testing and development purposes only.

## Cloud Setup

Create a [Divio Account](https://control.divio.com/) and lick the `Deploy to Divio` button above and follow the app creation wizard. Make sure:

* to add **PostgreSQL** within your **Services**.
* to add the following entries to the "Release commands" section within your **Settings**:
  ```bash
  pnpm run payload migrate:create
  pnpm run payload migrate
  ```

For in-depth details about Divio Cloud, refer to the [Divio documentation](https://docs.divio.com/introduction/).

## Local Setup

Install the [Divio CLI](https://github.com/divio/divio-cli) to set up your app locally.

Alternatively, build this app locally using Docker:

1. Ensure [Docker](https://docs.docker.com/get-docker/) is installed and running.
2. Clone this repository locally.
3. Build the app with `docker compose build`.
4. Build the app with `docker compose run web npm install`.
5. Run the app using `docker compose up`.
6. Open [http://localhost:8000]() to view your app.
