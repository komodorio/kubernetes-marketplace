#!/bin/bash

# Add the Helm repository for Komodor
helm repo add komodorio https://helm-charts.komodor.io
helm repo update

#Install stack
helm install komodor-agent komodorio/komodor-agent --version 2.3.0 --namespace komodor --set apiKey ${KOMODOR_API_KEY} --set clusterName ${KOMODOR_CLUSTER_NAME}
