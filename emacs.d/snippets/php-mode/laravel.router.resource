# -*- mode: snippet -*-
# name: laravel router resource
# key: rr
# --
Route::resource('${1:name}', '${1:$(laravel/controller-from-resource yas-text)}');