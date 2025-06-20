#!/bin/bash
set -e

echo ">>> 安装 pytest"
pip3 install --quiet pytest pytest-cov

echo ">>> 执行测试并生成 coverage.xml"
pytest --cov=. --cov-report=xml

echo ">>> 测试完成"
