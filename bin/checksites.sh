#!/usr/bin/env bash

# ChatGPT Prompt for that:
# Make a list of Github repositories of IST Dresden GmbH https://github.com/orgs/ist-dresden/repositories?type=all . List the id and title of the project, e.g.
# composum-AI : Artificial intelligence services for the Composum Pages CMS and Adobe AEM

# Create a markdown list that links to those, e.g.
# - [Composum AI](https://ist-dresden.github.io/composum-AI/) : Artificial intelligence services for the Composum Pages CMS and Adobe AEM


# List of repository names from IST Dresden GmbH
repos=(
  "composum-AI"
  "composum-aem-microsite"
  "composum-launch"
  "composum-nodes"
  "www-composum-com"
  "composum-dashboard"
  "composum-platform-auth"
  "composum-platform-workflow"
  "composum-platform-tenant"
  "composum-platform-replication"
  "composum-pages"
  "cpm-platform-htl"
  "composum-meta"
  "composum-assets"
  "composum-prototype"
  "composum-platform"
  "jackrabbit-filevault"
  "sling-org-apache-sling-jcr-packageinit"
  "sling-org-apache-sling-testing-sling-mock"
  "jackrabbit-oak"
  "imgscalr"
  "geb-spock-ext"
)

# Base URL for GitHub Pages
base_url="https://ist-dresden.github.io"

# Loop through the repository names and check if their GitHub Pages exist
for repo in "${repos[@]}"; do
  # Construct the full URL
  url="$base_url/$repo/"

  # Use curl to get the HTTP status code
  status=$(curl -o /dev/null -s -w "%{http_code}\n" "$url")

  # If the status code is 200, the page exists, so print the URL
  if [ "$status" -eq 200 ]; then
    echo "$url exists"
  else
    echo "$url does not exist"
  fi
done
