#!/usr/bin/env bash

fd -e html |xargs -I^ sed -i 's,_static,static,g' ^

if [ -d docs/_static ] ; then
    mv docs/_static docs/static
fi
