# Backend Implementation - Backend 구현 워크플로우

> **Shaul Corporation 원칙 적용**

Backend만 구현이 필요한 경우 (API 추가, 서비스 로직, DB 변경 등)를 오케스트레이션합니다.

## 실행 단계

### 1단계: 정보 수집

사용자에게 다음 정보를 질문하세요:

1. **기능명**: 구현할 기능 이름
2. **Backend 언어**: Java, Kotlin, Node.js, Golang, PHP 중 선택
3. **설명**: 구현해야 할 기능의 상세 설명

인자로 기능명이 제공된 경우: $ARGUMENTS

**언어 선택 질문**:
```
AskUserQuestion:
  question: "Backend 개발에 사용할 언어를 선택하세요"
  options:
    - Java (Spring Boot)
    - Kotlin (Spring Boot)
    - Node.js (NestJS/Express)
    - Golang (Gin/Echo)
    - PHP (Laravel)
```

### 2단계: 코드베이스 탐색

Task 도구 (subagent_type: Explore)를 사용하여:
- 기존 API 패턴 확인
- DB 스키마 구조 파악
- 서비스 구조 분석

---

## Phase 1: 설계 (순차)

#### Agent 1: Backend Architect
```
API 엔드포인트 설계
아키텍처 설계
인터페이스 정의

산출물: docs/implementation/<기능명>/backend/api-spec.md
```

#### Agent 2: DBA Architect
```
DB 스키마 설계
마이그레이션 생성

산출물: docs/implementation/<기능명>/backend/db-schema.sql
```

---

## Phase 2: 구현 (순차)

#### Step 1: Backend Developer
```
핵심 비즈니스 로직 구현
서비스 레이어 구현
도메인 모델 정의
```

#### Step 2: Backend {Language}
선택된 언어의 Agent 실행:
```
컨트롤러/라우터 구현
DTO 클래스 생성
미들웨어 구현
```

#### Step 3: DBA Tuner
```
쿼리 최적화
인덱스 추가
성능 개선
```

---

## Phase 3: 검증 (병렬)

#### qa-tester
```
단위 테스트, 통합 테스트
```

#### security-auditor
```
보안 감사, 취약점 스캔
```

#### backend-reviewer
```
코드 리뷰, 품질 검토
```

**통과 기준**:
- 테스트 커버리지 80% 이상
- Critical 취약점 0건
- 코드 리뷰 승인

---

## Phase 4: 배포 (순차)

#### devops-jenkins
```
CI/CD 파이프라인 트리거
```

#### devops-deployer
```
프로덕션 배포
```

---

## 산출물

```
docs/implementation/<기능명>/backend/
├── README.md           # 구현 개요
├── api-spec.md         # API 명세
├── db-schema.sql       # DB 스키마
├── impl-notes.md       # 구현 노트
├── test-report.md      # 테스트 결과
├── security-audit.md   # 보안 감사
└── deploy-log.md       # 배포 로그
```

## 관련 명령어

| 명령어 | 용도 |
|--------|------|
| `/tech-implementation` | 전체 구현 (Backend + Frontend) |
| `/frontend-implementation` | Frontend 연동 필요 시 |
