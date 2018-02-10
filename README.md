# travis-cli

[![Docker Automated build](https://img.shields.io/docker/automated/ivandelabeldad/travis-cli.svg?style=flat-square)](https://store.docker.com/community/images/ivandelabeldad/travis-cli)
[![Docker Build Status](https://img.shields.io/docker/build/ivandelabeldad/travis-cli.svg?style=flat-square)](https://store.docker.com/community/images/ivandelabeldad/travis-cli)

Docker with travis command line interface

## Usage

### Login

#### Using github access token (This is the only way currently)

- Create a github token for the application [Instructions here](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/).
- Pass the environment variable GITHUB_TOKEN with yours

```
docker run --rm -e GITHUB_TOKEN="yourgithubtoken" ivandelabeldad/travis-cli
```

### Commands

#### Show help
```
docker run --rm ivandelabeldad/travis-cli help
```

#### Show repos

```
docker run --rm -e GITHUB_TOKEN=yourgithubtoken ivandelabeldad/travis-cli repos
```

#### Encrypt file
```
docker run --rm -e GITHUB_TOKEN=yourgithubtoken -v /path/to/localfile:/travis ivandelabeldad/travis-cli encrypt-file privatefile encryptedfile
```

## License

The docker-travis-cli is open-sourced software licensed under
the [MIT license](https://github.com/ivandelabeldad/travis-cli/blob/master/LICENSE).
