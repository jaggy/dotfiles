# -*- mode: snippet -*-
# name: laravel router resource
# key: rr
# --
$router->resource('${1:name}', '${2:${1/\w+\s*/\u$0/g}}Controller');