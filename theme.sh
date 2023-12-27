#!/bin/bash

# Compile Sass
sass src/base.scss base.css
sass src/default.scss css/default.css --style=compressed
sass src/home.scss css/home.css --style=compressed
sass src/admin.scss css/admin.css --style=compressed

# Tweak for dynamic static
THEME_STATIC_DIR="/Library/WebServer/Documents/public_html/websites/Webcilo/Public/webcilo.com/www/assets/themes/peepso"

# Watch Sass
sass --watch src/default.scss:${THEME_STATIC_DIR}/css/default.css --style=compressed
sass --watch src/home.scss:${THEME_STATIC_DIR}/css/home.css --style=compressed
sass --watch src/admin.scss:${THEME_STATIC_DIR}/css/admin.css --style=compressed