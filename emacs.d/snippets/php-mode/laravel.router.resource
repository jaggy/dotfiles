# -*- mode: snippet -*-
# name: laravel router resource
# key: rr
# --
$router->resource('${1:name}', "${1:$(resource-to-controller yas-text)}");