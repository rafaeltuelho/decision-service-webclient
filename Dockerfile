FROM registry.access.redhat.com/ubi8/nginx-118:latest

# copy the static content from the nodejs builder image
COPY --from=rafaeltuelho/decision-service-s2i-webpack /opt/app-root/output .

CMD nginx -g "daemon off;"