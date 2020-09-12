
docker run --rm \
-v "${PWD}:/local" \
openapitools/openapi-generator-cli:v4.1.2 generate \
-i /local/api/openapi.yaml \
-g go-server \
-o /local


sudo chown -R $USER .