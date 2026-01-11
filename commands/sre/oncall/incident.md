---
description: "[SRE/Oncall] 인시던트 대응"
argument-hint: [incident-id]
allowed-tools: Read, Write, Edit, Bash, Grep, Glob, WebSearch
---

# SRE Oncall - 인시던트 대응

## Agent 정보
- **팀**: SRE
- **역할**: Oncall (온콜 엔지니어)
- **작업**: Incident (인시던트 대응)

## 인시던트: $ARGUMENTS

## 심각도 분류
| SEV | 설명 | 대응 시간 |
|-----|------|-----------|
| 1 | 전체 서비스 다운 | 즉시 |
| 2 | 주요 기능 장애 | 15분 |
| 3 | 일부 기능 저하 | 1시간 |
| 4 | 경미한 이슈 | 24시간 |

## 작업 수행
$ARGUMENTS 인시던트에 대해 분석, 대응, 포스트모템을 수행합니다.
