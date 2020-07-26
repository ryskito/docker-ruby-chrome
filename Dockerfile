FROM ryskito/docker_ruby_imagemagick:ruby2.6.3_imagemagick7.0.10-0_v1.0.0

RUN apk add -U chromium chromium-chromedriver
RUN apk add git
