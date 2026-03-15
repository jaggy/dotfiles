#!/bin/bash

set -a
source ~/.dotfiles/.env
set +a

SCENE="${1:?Usage: $0 <scene_entity_id>}"

response=$(curl -s -o /dev/null -w "%{http_code}" \
  -X POST "${TUNA__HA_URL}/api/services/scene/turn_on" \
  -H "Authorization: Bearer ${TUNA__HA_TOKEN}" \
  -H "Content-Type: application/json" \
  -d "{\"entity_id\": \"${SCENE}\"}")

if [ "$response" = "200" ]; then
  echo "✓ Scene activated: ${SCENE}"
else
  echo "✗ Failed (HTTP $response)"
  exit 1
fi
