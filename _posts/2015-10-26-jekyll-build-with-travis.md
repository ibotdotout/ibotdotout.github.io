---
layout: post
title: Jekyll build with Travis and deploy to Github Page
tags: [jekyll]
permalink: jekyll-travis-github
# --- option ---
category: article
excerpt: Custom build jekyll with Travis for enable plugin and deploy to Github Page
---

> Github Pages Tips:  
> Github Pages always complie jekyll with `--safe` option that will  
> disable plugins but some plugin can work with Github Pages.  
> [List of Jekyll Plguins that working on Github > Pages](https://help.github.com/articles/using-jekyll-plugins-with-github-pages/)  

To avoid this `--safe` option to be powerful jekyll, you need to build your jelyll somewhere else and commit your static page to `main` or `gh-page` branch.
We can automate build jekyll with [Travis-CI](https://travis-ci.org)
that store your jekyll file in `jekyll` branch when push to github that
will trig to Travis to build and deploy static page back to your `main`
branch to publish your contents. you should read previous [blog about
jekyll and travis]({{url}}/jekyll-with-ci/)

<!-- more -->

## Good to knows:
1. Should backup your repository in somewhere else, this method need to
   in your local repository and your github repository.
1. In your `.travis.yml` always keep `> /dev/null 2>&1` to avoid your tokens display on logs or you can remove for debugging git push.
2. Github page need `verified email` for trigger update contents.
3. You can check your last build from `feed.xml` on Jekyll
4. If your use Github page as personal page don't try to change `Default
   branch` on your Github repository settings that will use your
   `Default branch` to hosting your page.


## How to:
> Verified by [Mildronize](http://dev.mildronize.com)  

1. Create `jekyll` branch for development

    ```sh
    $ git branch jekyll
    ```

2. Clear your `main` or `gh-page` branch to blank

    ```sh
    $ git rm *
    ```

3. Enable Travis on your repository on Travis website and turn on `Build
   only if .travis.yml is present` on your travis repository settings.
4. Checkout `jekyll` branch and create `.travis.yml` then edit `GH_REF`
   and `TARGET_BRANCH` to your own

    ```sh
    $ git checkout jekyll
    ```

    .travis.yml

    ```xml
    sudo: false

    language: ruby

    rvm:
    - 2.2

    branches:
      only:
      - jekyll

    script:
    - bundle exec jekyll build
    - bundle exec htmlproof ./_site --disable-external

    after_success:
    - git clone https://$GH_REF
    - cd $(basename ${GH_REF%.git})
    - git config user.name "Travis-CI"
    - git config user.email ${EMAIL}
    - cp -R ../_site/* .
    - touch _site/.nojekyll
    - git add -A .
    - git commit -m "Generated Jekyll Site by Travis CI - ${TRAVIS_BUILD_NUMBER}"
    - git push -f "https://${DEPLOY_KEY}@${GH_REF}" ${TARGET_BRANCH} > /dev/null 2>&1

    env:
      global:
      - NOKOGIRI_USE_SYSTEM_LIBRARIES=true
      - GH_REF: github.com/ibotdotout/ibotdotout.github.io.git
      - TARGET_BRANCH: master
    ```

5. Create your [Github Personal Access Tokens](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) - check only `repo` that enough.
5. Install Travis Gem on your machine for encryption sensitive data

    ```sh
    $ gem install travis
    ```

6. Encrypt your `EMAIL` and `DEPLOY_KEY`

    ```sh
    # --add opton will automated add sescure data to your .travis.yml
    # edit verifiedemail to your github email account
    $ travis encrypt EMAIL=verifiedemail --add
    # edit githubtoken to your github personal access tokens
    $ travis encrpy DEPLOY_KEY=githubtoken --add
    ```
8. Commit `jekyll` branch

    ```sh
    $ git add -A
    $ git commit -m "Create Jekyll branch for build jekyll with Travis"
    ```

7. Push to `jekyll` branch to Github repository and wait

    ```sh
    $ git push origin jekyll
    # Don't care warnning about main/gh-page branch that local repository out of date
    ```

8. Look your published site

## [Demo Repository](https://github.com/ibotdotout/ibotdotout.github.io)
I use `develop` branch as `jekyll` and I'm lazy to change but I recommend to use `jekyll` branch should be better.

## References:
1. [Auto-deploying built products to gh-pages with Travis](https://gist.github.com/domenic/ec8b0fc8ab45f39403dd)
2. [Publishing gh-pages with Travis-CI](https://medium.com/@nthgergo/publishing-gh-pages-with-travis-ci-53a8270e87db)
5. [Automate GitHub Pages publishing with Jekyll and Travis CI](http://eshepelyuk.github.io/2014/10/28/automate-github-pages-travisci.html)
6. [Troubleshooting GitHub Pages build failures](https://help.github.com/articles/troubleshooting-github-pages-build-failures/)
3. [Travis Custom Deployment](http://docs.travis-ci.com/user/deployment/custom/)
4. [Travis Encryption keys](http://docs.travis-ci.com/user/encryption-keys/)
7. [Creating an access token for command-line use](https://help.github.com/articles/creating-an-access-token-for-command-line-use/)
9. [Bypassing Jekyll on GitHub Pages](https://github.com/blog/572-bypassing-jekyll-on-github-pages)
