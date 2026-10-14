#!/usr/bin/env bash
set -euo pipefail
cd /workspace/cloud_particle
export PIP_CACHE_DIR=/workspace/.cache/pip
export MPLCONFIGDIR=/workspace/.cache/matplotlib
export XDG_CACHE_HOME=/workspace/.cache
python3 -m venv /workspace/.venv
/workspace/.venv/bin/python -m pip install --disable-pip-version-check -r requirements.txt
/workspace/.venv/bin/python -m pip check
/workspace/.venv/bin/python stenosis_pinn.py --self-test
