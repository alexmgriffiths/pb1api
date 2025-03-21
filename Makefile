gen:
	protoc --proto_path=proto \
	--go_out=pb --go_opt=paths=source_relative \
  	--go-grpc_out=pb --go-grpc_opt=paths=source_relative \
  	--grpc-gateway_out=pb --grpc-gateway_opt=paths=source_relative \
  	--openapiv2_out=swagger \
  	proto/*.proto

clean:
	rm pb/*.go