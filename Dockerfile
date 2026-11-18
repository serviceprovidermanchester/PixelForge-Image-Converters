# PixelForge - Enterprise Client-Side Image Converter Suite
# Maintained by SPManchester Private Limited (https://www.spmanchester.com)
# Author: Sayed Mudassar Akbar <info@spmanchester.com>

FROM nginx:1.27-alpine

LABEL maintainer="SPManchester Private Limited <info@spmanchester.com>"
LABEL author="Sayed Mudassar Akbar"
LABEL org.opencontainers.image.title="PixelForge Image Converters"
LABEL org.opencontainers.image.description="60 In-Browser Privacy-First Client-Side Image Converters"
LABEL org.opencontainers.image.url="https://www.spmanchester.com"

# Remove default nginx site
RUN rm -rf /usr/share/nginx/html/*

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy all static tools and assets
COPY . /usr/share/nginx/html/

# Clean up non-static repo metadata from web root
RUN rm -rf /usr/share/nginx/html/.git \
           /usr/share/nginx/html/.github \
           /usr/share/nginx/html/Dockerfile \
           /usr/share/nginx/html/docker-compose.yml \
           /usr/share/nginx/html/package.json \
           /usr/share/nginx/html/nginx.conf

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
