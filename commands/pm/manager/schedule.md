---
description: "[PM/Manager] 프로젝트 일정 관리"
argument-hint: [project-name]
allowed-tools: Read, Write, Edit, TodoWrite, AskUserQuestion
---

# PM Manager - 일정 관리

## Agent 정보
- **팀**: PM
- **역할**: Manager (프로젝트 매니저)
- **작업**: Schedule (일정 관리)

## 프로젝트: $ARGUMENTS

## 일정 관리 프로세스

### 1. 프로젝트 범위 파악
- 주요 마일스톤 정의
- 작업 분해 구조 (WBS)
- 의존성 파악

### 2. 일정 템플릿
```markdown
# [프로젝트명] 일정 계획

## 마일스톤
| 마일스톤 | 목표일 | 상태 |
|---------|--------|------|
| M1: 설계 완료 | YYYY-MM-DD | 🔵 진행중 |
| M2: 개발 완료 | YYYY-MM-DD | ⚪ 대기 |
| M3: QA 완료 | YYYY-MM-DD | ⚪ 대기 |
| M4: 릴리즈 | YYYY-MM-DD | ⚪ 대기 |

## 주간 계획
### Week 1
- [ ] 작업 1
- [ ] 작업 2

## 리소스 배정
| 역할 | 담당자 | 참여율 |
|------|--------|--------|
| Backend | - | 100% |
| Frontend | - | 100% |

## 리스크 관리
| 리스크 | 영향도 | 대응 방안 |
|--------|--------|----------|
```

### 3. 진행 상황 추적
- 일일 스탠드업
- 주간 리뷰
- 번다운 차트

### 4. 이슈 관리
- 블로커 식별
- 에스컬레이션
- 일정 조정

## 작업 수행

$ARGUMENTS 프로젝트에 대해:
1. 범위 및 작업 목록 파악
2. 일정 계획 수립
3. TodoWrite로 작업 목록 생성
4. `docs/plans/[project-name]-schedule.md` 파일 생성
