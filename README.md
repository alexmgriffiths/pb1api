
# Generating code

    make gen

# Downloading this repo into other repos

Create a new PAT with read permissions to your private repos with read-only for contents and meta-data. Then:

    export GOPRIVATE=github.com/alexmgriffiths
    git config --global url."https://<YOUR_PAT_TOKEN>@github.com/".insteadOf "https://github.com/"