#!/bin/bash

echo -n ${AWS_ACCESS_KEY_ID_VAL} > overlays/dev/AWS_ACCESS_KEY_ID.txt
echo -n ${AWS_SECRET_ACCESS_KEY_VAL} > overlays/dev/AWS_SECRET_ACCESS_KEY.txt
echo -n ${AWS_DEFAULT_REGION_VAL} > overlays/dev/AWS_DEFAULT_REGION.txt

kubectl delete -k overlays/dev
kubectl apply -k overlays/dev

rm overlays/dev/AWS_ACCESS_KEY_ID.txt
rm overlays/dev/AWS_SECRET_ACCESS_KEY.txt
rm overlays/dev/AWS_DEFAULT_REGION.txt