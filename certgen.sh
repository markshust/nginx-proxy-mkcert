#!/bin/bash
mkdir -p certs && cd $_
mkcert -install
mkcert -key-file foo.test.key -cert-file foo.test.crt foo.test *.foo.test
mkcert -key-file bar.test.key -cert-file bar.test.crt bar.test *.bar.test
mkcert -key-file baz.test.key -cert-file baz.test.crt baz.test *.baz.test
