#!/usr/bin/env bash
set -e

# Install prerequisites
# npm install --global grpc-tools protobufjs

# Create directory for third-party protos if not already present
mkdir -p dependencies
cd dependencies

# Clone or pull dependencies
git clone https://github.com/envoyproxy/protoc-gen-validate.git || true
git clone https://github.com/cncf/udpa.git || true
git clone https://github.com/protocolbuffers/protobuf.git || true
git clone https://github.com/cncf/xds.git || true
git clone https://github.com/googleapis/googleapis.git || true
git clone https://github.com/census-instrumentation/opencensus-proto.git || true
git clone https://github.com/openzipkin/zipkin-api.git || true
git clone https://github.com/open-telemetry/opentelemetry-proto.git || true
git clone https://github.com/prometheus/client_model.git || true
git clone https://github.com/bazelbuild/rules_proto.git || true
git clone https://github.com/rules-proto-grpc/rules_proto_grpc.git || true
git clone https://github.com/google/cel-spec.git || true
git clone https://github.com/envoyproxy/toolshed.git || true

cd ..

# Create output folder
mkdir -p out
