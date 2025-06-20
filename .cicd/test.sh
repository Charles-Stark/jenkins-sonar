#!/bin/bash
set -e

echo ">>> 安装 pytest 和 pytest-cov"
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install pytest pytest-cov

echo ">>> 运行测试并生成覆盖率报告"
pytest --cov=app --cov-report=xml tests/
