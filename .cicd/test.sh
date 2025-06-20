#!/bin/bash
set -e

cd "$(dirname "$0")/.."

echo ">>> 创建 Python 虚拟环境"
python3 -m venv .venv
source .venv/bin/activate

echo ">>> 安装 pytest"
pip3 install --quiet pytest pytest-cov

echo ">>> 执行测试并生成 coverage.xml"
pytest --cov=. --cov-report=xml

echo ">>> 测试完成"
