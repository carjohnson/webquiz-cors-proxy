FROM nginx:1.25-alpine

COPY default.conf /etc/nginx/templates/default.conf.template
ENV NGINX_ENVSUBST_FILTER=^ORTHANC_AUTH_B64$
