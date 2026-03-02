#!/bin/bash

# CS 학습 플랫폼 실행 스크립트
cd "$(dirname "$0")"

echo "🚀 CS 학습 플랫폼을 시작합니다..."
echo ""

# 기존 서버가 실행 중이면 종료
lsof -ti:8000 | xargs kill -9 2>/dev/null

# 2초 후 브라우저 열기 (서버 시작 대기)
(sleep 2 && open "http://localhost:8000") &

echo "📚 서버가 시작되었습니다: http://localhost:8000"
echo "🛑 종료하려면 이 창을 닫거나 Ctrl+C를 누르세요"
echo ""

# Python 서버 실행
python3 -m http.server 8000
