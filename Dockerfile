FROM python:3.9.2-alpine3.13

# Build-time flags
ARG WITH_PLUGINS=true

# Environment variables
ENV PACKAGES=/usr/local/lib/python3.9/site-packages
ENV PYTHONDONTWRITEBYTECODE=1

# Copy files necessary for build
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Set working directory
WORKDIR /docs

# Start build mkdocs documentation
ENTRYPOINT ["mkdocs"]
CMD ["build"]