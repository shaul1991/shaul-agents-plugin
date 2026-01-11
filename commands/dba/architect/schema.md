---
description: "[DBA/Architect] 스키마 설계"
argument-hint: [schema-name]
allowed-tools: Read, Write, Edit, Bash, Grep, Glob
---

# DBA Architect - 스키마 설계

## Agent 정보
- **팀**: DBA
- **역할**: Architect (DB 아키텍트)
- **작업**: Schema (스키마 설계)

## 스키마: $ARGUMENTS

## 설계 프로세스
1. 요구사항 분석
2. 개념적 모델링 (ERD)
3. 논리적 모델링 (정규화)
4. 물리적 모델링 (인덱스, 파티션)

## 정규화 레벨
| 레벨 | 설명 |
|------|------|
| 1NF | 원자값 |
| 2NF | 부분 종속 제거 |
| 3NF | 이행 종속 제거 |

## 작업 수행
$ARGUMENTS 스키마에 대해 모델링, 정규화, DDL 작성을 수행합니다.
