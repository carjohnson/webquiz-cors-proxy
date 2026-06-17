FROM nginx:1.25-alpine

COPY default.conf /etc/nginx/templates/default.conf.template
ENV NGINX_ENVSUBST_FILTER=^ORTHANC_AUTH_B64$

# # Debug: print the rendered config after envsubst runs, before nginx starts
# COPY debug-entrypoint.sh /docker-entrypoint.d/99-debug-print-config.sh
# RUN chmod +x /docker-entrypoint.d/99-debug-print-config.sh