#!/bin/bash


function dist {
  DIST_DIR=$(awk '/destination:/{dist=$2}; END {if (dist) print dist; else print "./_site"}' < _config.yml)
  if [[ ! -d $DIST_DIR/.git ]]; then
    REMOTE_ORIGIN=$(git remote -v | awk '/origin/{print $2}' | sort -u)
    rm -rf $DIST_DIR

    git clone \
      --single-branch \
      --branch=gh-pages \
      --depth=1 $REMOTE_ORIGIN \
      $DIST_DIR
  fi
  time bundle exec jekyll build -d 'destination-path'
}

function deploy {
  DIST_DIR=$(awk '/destination:/{dist=$2}; END {if (dist) print dist; else print "./_site"}' _config.yml)
  MASTER_HEAD_SHA=$(git rev-parse --short HEAD)
  pushd $DIST_DIR
    git add . -A
    git commit -m "Deployed from master: $MASTER_HEAD_SHA"

    echo "Pushing code to branch gh-pages..."
    git push --force 'git@heroku.com:brasilpyladies.git' 'master:master'
  popd
}

function install_gems {
  bundle install
}

function clean {
  rm -rf destination-path
}

install_gems
dist
deploy
clean
