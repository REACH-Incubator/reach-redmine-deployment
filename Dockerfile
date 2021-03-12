FROM bitnami/redmine:4.1.1

WORKDIR /tmp
RUN git clone https://github.com/REACH-Incubator/reach-redmine-theme
RUN cp -r reach-redmine-theme/reach-theme /opt/bitnami/redmine/public/themes/

WORKDIR /opt/bitnami/redmine

RUN bundle config --local frozen 0 && \
    bundle install --without development test && \
    bundle config --local frozen 1