
# Generating code

    make gen

# Downloading this repo into other repos

Create a new PAT with read permissions to your private repos with read-only for contents and meta-data. Then:

    export GOPRIVATE=github.com/alexmgriffiths
    git config --global url."https://<YOUR_PAT_TOKEN>@github.com/".insteadOf "https://github.com/"

## Merging Swagger

If you want to merge the swagger into one doc instead of it being split, in the `Makefile` modify the `gen` command to the following

    gen:
        protoc --proto_path=proto \
        --go_out=pb --go_opt=paths=source_relative \
        --go-grpc_out=pb --go-grpc_opt=paths=source_relative \
        --grpc-gateway_out=pb --grpc-gateway_opt=paths=source_relative \
        --openapiv2_out=swagger --openapiv2_opt=allow_merge=true,merge_file_name=pb1api \
        proto/*.proto