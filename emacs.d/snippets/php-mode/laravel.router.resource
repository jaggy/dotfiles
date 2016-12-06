# -*- mode: snippet -*-
# name: laravel router resource
# key: rr
# --
$router->resource('${1:name}', '${1:$(laravel-create-resource-controller yas-text)}');