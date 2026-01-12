# Tech Implementation Workflow - 기술 구현 워크플로우

> **Shaul Corporation 원칙 적용**
>
> 모든 협업은 [COMPANY_PRINCIPLES.md](../COMPANY_PRINCIPLES.md)의 원칙을 따릅니다.
> - **One Team**: 부서를 넘어 하나의 팀으로 협력
> - **Best Decision**: 데이터와 근거 기반 의사결정
> - **Excellence**: 최고의 결과물 추구
> - **우선순위**: 회사 전체 이익 > 팀 이익 > 개인 편의

prototyping-workflow 완료 후, 실제 기술 구현 (Backend + Frontend + 배포)을 오케스트레이션합니다.

## 실행 단계

### 1단계: 프로젝트 정보 수집

사용자에게 다음 정보를 질문하세요:

1. **기능명**: 구현할 기능 이름 (예: user-authentication, payment-system)
2. **Backend 언어**: Java, Kotlin, Node.js, Golang, PHP 중 선택
3. **설명**: 구현해야 할 기능의 상세 설명

인자로 기능명이 제공된 경우: $ARGUMENTS
제공되지 않은 경우 AskUserQuestion 도구를 사용하세요.

**Backend 언어 선택 질문**:
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
- 기존 프로젝트 구조 파악
- 기존 API 패턴 확인
- DB 스키마 구조 파악
- Frontend 컴포넌트 패턴 분석

---

## Phase 1: 설계 확정 & 인프라 준비 (병렬)

### Agent 실행 (병렬 - 3개 동시)

#### Agent 1: Backend Architect
```
프롬프트:
당신은 Backend Architect입니다.
기능 "<기능명>"에 대해 다음을 설계하세요:

1. API 엔드포인트 설계
   - REST API 또는 GraphQL
   - 요청/응답 스키마
   - 인증/인가 방식

2. 아키텍처 설계
   - 서비스 구조
   - 데이터 흐름
   - 외부 의존성

산출물: docs/implementation/<기능명>/01-api-spec.md
```

#### Agent 2: DBA Architect
```
프롬프트:
당신은 DBA Architect입니다.
기능 "<기능명>"에 대해 다음을 설계하세요:

1. DB 스키마 설계
   - 테이블 구조
   - 관계 정의
   - 인덱스 전략

2. 마이그레이션 생성
   - SQL 마이그레이션 파일

산출물: docs/implementation/<기능명>/02-db-schema.sql
```

#### Agent 3: DevOps Infra
```
프롬프트:
당신은 DevOps Infra입니다.
기능 "<기능명>"에 대해 다음을 준비하세요:

1. 환경 변수 정의
2. 인프라 요구사항
3. 개발 환경 설정

산출물: docs/implementation/<기능명>/03-infra-setup.md
```

---

## Phase 2: Backend 구현 (순차)

### Agent 실행 (순차 - 3단계)

#### Step 1: Backend Developer
```
프롬프트:
당신은 Backend Developer입니다.
Phase 1에서 설계된 API 명세를 바탕으로:

1. 핵심 비즈니스 로직 구현
   - 서비스 레이어
   - 도메인 모델
   - 유틸리티 함수

2. 단위 테스트 작성

산출물: 실제 코드 구현
```

#### Step 2: Backend {Language}
선택된 언어에 따라 해당 Agent 실행:
- backend-java: Java/Spring Boot 구현
- backend-kotlin: Kotlin 구현
- backend-node: Node.js/TypeScript 구현
- backend-golang: Go 구현
- backend-php: PHP/Laravel 구현

```
프롬프트:
당신은 <선택된 언어> Developer입니다.
서비스 로직을 바탕으로:

1. 컨트롤러/라우터 구현
2. DTO/Request/Response 클래스
3. 미들웨어/인터셉터
4. API 엔드포인트 테스트

산출물: 실제 코드 구현
```

#### Step 3: DBA Tuner
```
프롬프트:
당신은 DBA Tuner입니다.
구현된 코드의 DB 쿼리를 최적화하세요:

1. 쿼리 분석 및 최적화
2. 인덱스 추가
3. N+1 문제 해결
4. 캐싱 전략 수립

산출물: 최적화된 쿼리 및 인덱스 설정
```

---

## Phase 3: Frontend 구현

### Agent 실행 (병렬 후 순차)

#### Step 1-3 (병렬):
**frontend-component**, **frontend-state**, **frontend-hook**

```
각 Agent 프롬프트:
기능 "<기능명>"에 대해 Frontend를 구현하세요.

- Component: UI 컴포넌트 구현
- State: 상태 관리 (Zustand/Context)
- Hook: 커스텀 훅 구현

산출물: 실제 코드 구현
```

#### Step 4 (순차):
**frontend-api**

```
프롬프트:
구현된 Backend API와 연동하세요:

1. API 클라이언트 구현
2. 데이터 페칭 로직
3. 에러 핸들링
4. 로딩 상태 관리

산출물: API 연동 코드
```

---

## Phase 4: 테스트 & 품질 (병렬)

### Agent 실행 (병렬 - 3개 동시)

#### frontend-test
```
단위 테스트, 통합 테스트 작성
```

#### qa-tester
```
E2E 테스트, 시나리오 테스트 작성
```

#### qa-analyst
```
성능 테스트, 부하 테스트 실행
```

**테스트 통과 기준**:
- 단위 테스트 커버리지 80% 이상
- E2E 테스트 전체 통과
- 성능 목표 달성

---

## Phase 5: 보안 & 코드 리뷰 (병렬)

### Agent 실행 (병렬 - 3개 동시)

#### security-auditor
```
OWASP Top 10 체크, 취약점 스캔
```

#### backend-reviewer
```
코드 리뷰, 아키텍처 검토
```

#### frontend-lint
```
ESLint, 코드 품질 검사
```

**통과 기준**:
- Critical/High 취약점 0건
- 코드 리뷰 승인
- Lint 에러 0건

---

## Phase 6: 배포 & 모니터링 (순차)

### Agent 실행 (순차)

#### Step 1: devops-jenkins
```
CI/CD 파이프라인 트리거
빌드 및 테스트 실행
```

#### Step 2: devops-deployer
```
프로덕션 배포 실행
Blue-Green 또는 Canary 배포
```

#### Step 3: devops-monitor
```
모니터링 대시보드 설정
알림 규칙 구성
```

---

## 산출물

워크플로우 완료 후 다음 산출물이 생성됩니다:

```
docs/implementation/<기능명>/
├── README.md                    # 구현 개요
├── 01-api-spec.md               # API 명세
├── 02-db-schema.sql             # DB 스키마
├── 03-infra-setup.md            # 인프라 설정
├── 04-backend-impl.md           # Backend 구현 노트
├── 05-frontend-impl.md          # Frontend 구현 노트
├── 06-test-report.md            # 테스트 리포트
├── 07-security-audit.md         # 보안 감사 결과
├── 08-code-review.md            # 코드 리뷰 결과
├── 09-deploy-log.md             # 배포 로그
└── 10-monitoring-dashboard.md   # 모니터링 설정
```

## 관련 명령어

| 명령어 | 용도 |
|--------|------|
| `/backend-implementation` | Backend만 구현 |
| `/frontend-implementation` | Frontend만 구현 |
| `/prototyping-workflow` | 구현 전 기획/디자인 |
| `/team-discussion` | 팀 간 협업 토론 |
