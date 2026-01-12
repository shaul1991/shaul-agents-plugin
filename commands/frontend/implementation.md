# Frontend Implementation - Frontend 구현 워크플로우

> **Shaul Corporation 원칙 적용**

Frontend만 구현이 필요한 경우 (UI 추가, 페이지 개발, 상태 관리 등)를 오케스트레이션합니다.

## 실행 단계

### 1단계: 정보 수집

사용자에게 다음 정보를 질문하세요:

1. **기능명**: 구현할 기능/페이지 이름
2. **설명**: 구현해야 할 UI의 상세 설명
3. **실시간 기능**: WebSocket 필요 여부

인자로 기능명이 제공된 경우: $ARGUMENTS

### 2단계: 코드베이스 탐색

Task 도구 (subagent_type: Explore)를 사용하여:
- 기존 컴포넌트 패턴 확인
- 상태 관리 구조 파악
- 디자인 시스템 확인

---

## Phase 1: 컴포넌트 구현 (병렬)

#### frontend-component
```
UI 컴포넌트 설계 및 구현
Atomic Design 패턴 적용
```

#### frontend-state
```
상태 관리 구현
Zustand/Redux/Context 설정
```

#### frontend-hook
```
커스텀 훅 구현
재사용 로직 추출
```

---

## Phase 2: 통합 (순차)

#### frontend-api
```
API 클라이언트 구현
데이터 페칭 로직
에러 핸들링
```

#### frontend-socket (필요시)
```
WebSocket/SSE 연동
실시간 기능 구현
```

---

## Phase 3: 최적화 & 테스트 (병렬)

#### frontend-perf
```
번들 최적화
렌더링 성능 개선
Lighthouse 점수 향상
```

#### frontend-test
```
단위 테스트
통합 테스트
스냅샷 테스트
```

#### frontend-lint
```
ESLint 검사
코드 품질 검증
```

**통과 기준**:
- Lighthouse 점수 90점 이상
- 테스트 커버리지 70% 이상
- Lint 에러 0건

---

## Phase 4: 빌드 & 배포 (순차)

#### frontend-build
```
빌드 설정 최적화
환경 변수 설정
```

#### devops-jenkins
```
CI/CD 파이프라인 트리거
자동 배포
```

---

## 산출물

```
docs/implementation/<기능명>/frontend/
├── README.md              # 구현 개요
├── component-spec.md      # 컴포넌트 명세
├── state-management.md    # 상태 관리 설계
├── api-integration.md     # API 연동 문서
├── test-report.md         # 테스트 결과
├── performance-report.md  # 성능 리포트
└── build-config.md        # 빌드 설정
```

## 컴포넌트 구조

```
src/
├── components/
│   ├── atoms/          # Button, Input 등
│   ├── molecules/      # SearchBar, Card 등
│   ├── organisms/      # Header, Sidebar 등
│   └── templates/      # PageLayout 등
├── stores/             # Zustand stores
├── hooks/              # Custom hooks
└── lib/                # Utilities
```

## 관련 명령어

| 명령어 | 용도 |
|--------|------|
| `/tech-implementation` | 전체 구현 (Backend + Frontend) |
| `/backend-implementation` | API가 필요한 경우 |
| `/fe-component` | 개별 컴포넌트 구현 |
| `/fe-state` | 상태 관리 구현 |
