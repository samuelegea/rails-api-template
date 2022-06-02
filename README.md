# Rails API Template (With NextJS + PostgreSQL + Docker)

A RailsAPI + PostgreSQL + NextJS + Docker Application template with authentication model already configured

Status of the template: **WIP** at 2022-06-02

What is ready and what is not:

- [x] Docker is working
- [x] Frontend is available
- [x] Datababase and Backend are able to comunicate
- [ ] Front and Backend are able to comunicate with ease
- [ ] User model, controllers and migrations generated
- [ ] Login, signup, recovery scress are ok

## To use this template

First of all, glad that you found interesting using this. So, to effectivily utilize this template, substitute all `your_app` mentions in the code to your app name, and create the docker volume with `docker compose volume create your_app_pgdata` and you're good to go!

Run a

```shell
docker compose up
```

or even a

```shell
make up
```

to start!

Check on `Makefile` to see all available make commands!
