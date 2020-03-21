<h1 align="center">markshust/nginx-proxy-mkcert</h1>

<div align="center">
  <p>Example of <a href="https://github.com/nginx-proxy/nginx-proxy">nginx-proxy</a> using <a href="https://github.com/FiloSottile/mkcert">mkcert</a> with multiple domains per container for local development with SSL</p>
</div>

## Table of contents

- [Prerequisiites](#prerequisites)
- [Usage](#usage)
- [License](#license)

## Prerequisites

This example setup utilizes Docker with Docker Compose, and requires <a href="https://github.com/FiloSottile/mkcert">mkcert</a> to be installed on the host machine.

## Usage

You can bring containers up by running:

`docker-compose up`

### SSL Generation

An example of generating SSL certs with `mkcert` is available by running:

`./certgen.sh`

This generates SSL certs to be placed in the `certs` directory, which are then bind-mounted to the `nginx-proxy` container.

### Multiple Domains

This example setup uses three domains:

- https://foo.test -> resolves to `foo` service
- https://bar.test -> resolves to `foo` service
- https://baz.test -> resolves to `bar` service

This is useful if you have multiple domains that need to resolve to a single container.

## License

[MIT](https://opensource.org/licenses/MIT)