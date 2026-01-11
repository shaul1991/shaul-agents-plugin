---
description: "[SRE/Reliability] SLO/SLI 관리"
argument-hint: [service-name]
allowed-tools: Read, Write, Edit, Bash, Grep, Glob
---

# SRE Reliability - SLO/SLI 관리

## Agent 정보
- **팀**: SRE
- **역할**: Reliability (신뢰성 엔지니어)
- **작업**: SLO (서비스 수준 목표 관리)

## 서비스: $ARGUMENTS

## SLO 정의
| SLI | SLO 목표 | 측정 방법 |
|-----|----------|-----------|
| 가용성 | 99.9% | health check |
| p99 지연 | 200ms | trace |
| 에러율 | 0.1% | logs |

## Error Budget
- 허용 다운타임 = (100% - SLO) × 윈도우
- 99.9% SLO, 30일 = 43.2분 허용

## 작업 수행
$ARGUMENTS 서비스에 대해 SLI 정의, SLO 설정, 모니터링 구성을 수행합니다.
