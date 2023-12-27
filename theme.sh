#!/bin/bash
# The given code is a shell script written in Bash. It is used to compile Sass files into CSS files
# and watch for changes in the Sass files to automatically recompile them.

# Compile Sass
sass src/base.scss base.css
sass src/default.scss css/default.css --style=compressed
sass src/home.scss css/home.css --style=compressed
sass src/admin.scss css/admin.css --style=compressed

# Tweak for dynamic static
THEME_STATIC_DIR="PATH-TO-MEUTIV/mt_static/themes/THEME_NAME"

# Watch Sass
sass --watch src/default.scss:${THEME_STATIC_DIR}/css/default.css --style=compressed
sass --watch src/home.scss:${THEME_STATIC_DIR}/css/home.css --style=compressed
sass --watch src/admin.scss:${THEME_STATIC_DIR}/css/admin.css --style=compressed
