FROM alpine
RUN apk add curl bash git openssl --update --no-cache \
&& curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 \
&& chmod 700 get_helm.sh \
&& bash get_helm.sh
ENTRYPOINT ["helm"]
