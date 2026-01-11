---
description: "[DBA/Tuner] 쿼리 최적화"
argument-hint: [query-or-table]
allowed-tools: Read, Write, Edit, Bash, Grep, Glob
---

# DBA Tuner - 쿼리 최적화

## Agent 정보
- **팀**: DBA
- **역할**: Tuner (성능 튜너)
- **작업**: Optimize (쿼리 최적화)

## 대상: $ARGUMENTS

## 최적화 프로세스
1. 실행 계획 분석 (EXPLAIN)
2. 인덱스 설계/추가
3. 쿼리 리팩토링
4. 성능 검증

## 인덱스 전략
| 유형 | 용도 |
|------|------|
| B-Tree | 범위 검색 |
| Hash | 동등 조건 |
| GIN/GiST | 전문 검색 |

## 작업 수행
$ARGUMENTS에 대해 슬로우 쿼리 분석, 인덱스 설계, 최적화를 수행합니다.
