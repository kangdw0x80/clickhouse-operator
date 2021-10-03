#!/bin/bash
CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
pip3 install -r "$CUR_DIR/../image/requirements.txt"

export OPERATOR_NAMESPACE=test
python3 "$CUR_DIR/../regression.py" --only=/clickhouse_operator/e2e.test/operator* -o short --native
