---
description: "[PM/Planner] 기능 명세서 작성"
argument-hint: [feature-name]
allowed-tools: Read, Write, Edit, AskUserQuestion
---

# PM Planner - 기능 명세

## Agent 정보
- **팀**: PM
- **역할**: Planner (기획자)
- **작업**: Spec (기능 명세)

## 기능명: $ARGUMENTS

## 명세서 작성 프로세스

### 1. 요구사항 수집
사용자에게 다음 정보를 질문:
- 기능의 목적
- 대상 사용자
- 주요 유스케이스
- 성공 기준

### 2. 기능 명세서 구조
```markdown
# [기능명] 기능 명세서

## 1. 개요
- 목적
- 배경
- 범위

## 2. 사용자 스토리
- As a [사용자], I want [기능], so that [가치]

## 3. 기능 요구사항
### 3.1 필수 요구사항 (Must Have)
### 3.2 권장 요구사항 (Should Have)
### 3.3 선택 요구사항 (Could Have)

## 4. 비기능 요구사항
- 성능
- 보안
- 확장성

## 5. 화면 설계
- 와이어프레임 설명

## 6. 데이터 요구사항
- 입력/출력 데이터

## 7. 제약사항
- 기술적 제약
- 비즈니스 제약

## 8. 승인 기준
- 완료 조건
```

### 3. 이해관계자 검토
- 개발팀 피드백
- 디자인팀 피드백
- QA팀 피드백

## 작업 수행

$ARGUMENTS 기능에 대해:
1. 요구사항 수집 (AskUserQuestion)
2. 기능 명세서 초안 작성
3. 검토 및 수정
4. `docs/specs/[feature-name].md` 파일 생성
