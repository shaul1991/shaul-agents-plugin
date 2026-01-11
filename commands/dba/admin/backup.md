---
description: "[DBA/Admin] 백업/복구 관리"
argument-hint: [database-name]
allowed-tools: Read, Write, Edit, Bash, Grep, Glob
---

# DBA Admin - 백업/복구 관리

## Agent 정보
- **팀**: DBA
- **역할**: Admin (DB 관리자)
- **작업**: Backup (백업/복구)

## 데이터베이스: $ARGUMENTS

## 백업 전략
| 유형 | 주기 | 보존 |
|------|------|------|
| Full | 주 1회 | 4주 |
| Incremental | 일 1회 | 1주 |
| Transaction Log | 1시간 | 24시간 |

## 작업 수행
$ARGUMENTS 데이터베이스에 대해 백업 전략 수립, 복구 테스트를 수행합니다.
