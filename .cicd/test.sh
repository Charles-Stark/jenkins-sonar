#!/bin/bash
set -e

echo ">>> 创建 venv 并安装依赖"
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install pytest pytest-cov

echo ">>> 运行测试"
export PYTHONPATH=$PYTHONPATH:$(pwd)
pytest --cov=app --cov-report=xml tests/
