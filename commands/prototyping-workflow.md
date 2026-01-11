# Prototyping Workflow - 프론트엔드 개발 전 워크플로우

> **Shaul Corporation 원칙 적용**
>
> 모든 협업은 [COMPANY_PRINCIPLES.md](../COMPANY_PRINCIPLES.md)의 원칙을 따릅니다.
> - **One Team**: 부서를 넘어 하나의 팀으로 협력
> - **Best Decision**: 데이터와 근거 기반 의사결정
> - **Excellence**: 최고의 결과물 추구
> - **우선순위**: 회사 전체 이익 > 팀 이익 > 개인 편의

프론트엔드 개발 착수 전, PM/기획 → UX/UI 디자인 → 프로토타이핑까지의 전체 워크플로우를 자동화합니다.

## 실행 단계

### 1단계: 프로젝트 정보 수집

사용자에게 다음 정보를 질문하세요:

1. **프로젝트명**: 간단한 프로젝트/기능 이름 (예: user-dashboard, checkout-flow)
2. **프로젝트 설명**: 무엇을 구현해야 하는지 상세 설명
3. **대상 사용자**: 주요 타겟 사용자 정의
4. **우선순위**: 높음/중간/낮음

인자로 프로젝트명이 제공된 경우: $ARGUMENTS
제공되지 않은 경우 AskUserQuestion 도구를 사용하세요.

### 2단계: 코드베이스 탐색

Task 도구 (subagent_type: Explore)를 사용하여:
- 기존 프로젝트 구조 파악
- 기존 디자인 시스템 확인
- 유사 기능/컴포넌트 패턴 분석

---

## Phase 1: PM/기획 단계

### Agent 실행 (순차)

각 Agent를 순차적으로 실행하세요.

#### Agent 1: PM Analyst
```
프롬프트:
당신은 PM Analyst입니다.
프로젝트 "<프로젝트명>"에 대해 다음을 분석하세요:

1. 비즈니스 분석
   - 시장 현황 및 경쟁사 분석
   - 목표 사용자 분석
   - 예상 ROI

2. KPI 정의
   - 성공 지표 정의
   - 측정 방법

3. 리스크 분석
   - 잠재적 리스크
   - 대응 방안

출력: 마크다운 형식의 비즈니스 분석 보고서
```

#### Agent 2: PM Planner
```
프롬프트:
당신은 PM Planner입니다.
프로젝트 "<프로젝트명>"에 대해 다음을 작성하세요:

1. PRD (Product Requirements Document)
   - 개요 및 목적
   - 범위 정의

2. 기능 요구사항
   - 사용자 스토리
   - 기능 명세
   - 우선순위 (MoSCoW)

3. 비기능 요구사항
   - 성능 요구사항
   - 보안 요구사항

출력: 마크다운 형식의 PRD 문서
```

#### Agent 3: PM Manager
```
프롬프트:
당신은 PM Manager입니다.
프로젝트 "<프로젝트명>"에 대해 다음을 수립하세요:

1. 프로젝트 일정
   - 마일스톤 정의
   - 단계별 산출물

2. 리소스 계획
   - 필요 인력/역할
   - 협업 체계

3. 커뮤니케이션 계획
   - 보고 체계
   - 회의 일정

출력: 마크다운 형식의 프로젝트 계획서
```

---

## Phase 2: UX/UI 설계 단계

### Agent 실행 (순차)

#### Agent 4: UX Flow Designer
```
프롬프트:
당신은 UX Flow Designer입니다.
프로젝트 "<프로젝트명>"에 대해 다음을 설계하세요:

1. 사용자 여정 맵
   - 주요 사용자 시나리오
   - 터치포인트 정의

2. 화면 플로우
   - 화면 전환 로직
   - 네비게이션 구조

3. 인터랙션 플로우
   - 주요 인터랙션 정의
   - 에러 상태 처리

출력: 마크다운 형식의 UX 플로우 문서 (Mermaid 다이어그램 포함)
```

#### Agent 5: Layout Designer
```
프롬프트:
당신은 Layout Designer입니다.
프로젝트 "<프로젝트명>"에 대해 다음을 설계하세요:

1. 레이아웃 시스템
   - 그리드 시스템 정의
   - 컨테이너 규격

2. 반응형 브레이크포인트
   - 모바일: 320px ~ 767px
   - 태블릿: 768px ~ 1023px
   - 데스크톱: 1024px ~

3. 페이지 레이아웃
   - 주요 페이지별 레이아웃
   - 헤더/푸터/사이드바 구조

출력: 마크다운 형식의 레이아웃 명세서
```

#### Agent 6: UI Component Specifier
```
프롬프트:
당신은 UI Component Specifier입니다.
프로젝트 "<프로젝트명>"에 대해 다음을 정의하세요:

1. 컴포넌트 목록
   - Atomic 컴포넌트 (Button, Input, Icon 등)
   - Molecular 컴포넌트 (Card, Form, Modal 등)
   - Organism 컴포넌트 (Header, Sidebar 등)

2. 컴포넌트 명세
   - Props 인터페이스
   - 상태(State) 정의
   - 변형(Variants)

3. 컴포넌트 계층 구조

출력: 마크다운 형식의 컴포넌트 명세서
```

---

## Phase 3: 디자인 시스템 구축

### Agent 실행 (병렬)

**중요**: 4개의 Task를 반드시 **단일 메시지에서 병렬로** 실행하세요.

#### Agent 7: Color Palette Designer
```
프롬프트:
당신은 Color Palette Designer입니다.
프로젝트 "<프로젝트명>"에 대해 다음을 정의하세요:

1. 브랜드 컬러
   - Primary, Secondary, Accent

2. 시맨틱 컬러
   - Success, Warning, Error, Info

3. 그레이스케일
   - Gray 50 ~ 900

4. 다크모드 컬러 매핑

출력: CSS 변수 및 마크다운 형식의 컬러 팔레트
```

#### Agent 8: Design Token Designer
```
프롬프트:
당신은 Design Token Designer입니다.
프로젝트 "<프로젝트명>"에 대해 다음을 정의하세요:

1. 스페이싱 토큰
   - space-1 ~ space-12

2. 타이포그래피 토큰
   - Font family, size, weight, line-height

3. 그림자 토큰
   - shadow-sm, shadow-md, shadow-lg

4. 보더 토큰
   - border-radius, border-width

출력: CSS 변수 및 마크다운 형식의 토큰 정의서
```

#### Agent 9: Theme System Designer
```
프롬프트:
당신은 Theme System Designer입니다.
프로젝트 "<프로젝트명>"에 대해 다음을 설계하세요:

1. 테마 구조
   - Light 테마 정의
   - Dark 테마 정의

2. 테마 전환 로직
   - 시스템 설정 연동
   - 사용자 선호 저장

3. CSS 변수 구조화

출력: 마크다운 형식의 테마 시스템 설계서
```

#### Agent 10: Asset Manager
```
프롬프트:
당신은 Asset Manager입니다.
프로젝트 "<프로젝트명>"에 대해 다음을 계획하세요:

1. 아이콘 시스템
   - 사용할 아이콘 세트
   - 커스텀 아이콘 목록

2. 이미지 에셋
   - 이미지 포맷 가이드
   - 최적화 기준

3. 폰트 설정
   - 웹폰트 선택
   - 폴백 폰트

출력: 마크다운 형식의 에셋 관리 가이드
```

---

## Phase 4: 검증 단계

### Agent 실행 (순차)

#### Agent 11: Responsive Design Reviewer
```
프롬프트:
당신은 Responsive Design Reviewer입니다.
지금까지 설계된 내용을 검토하여:

1. 반응형 대응 검토
   - 모바일 최적화 여부
   - 태블릿 대응 여부
   - 대형 화면 대응

2. 터치 인터페이스 검토
   - 터치 타겟 크기
   - 제스처 지원

출력: 마크다운 형식의 반응형 검토 보고서
```

#### Agent 12: Accessibility Reviewer
```
프롬프트:
당신은 Accessibility Reviewer입니다.
지금까지 설계된 내용을 검토하여:

1. WCAG 2.1 준수 검토
   - 레벨 A 항목
   - 레벨 AA 항목

2. 키보드 접근성
   - 포커스 순서
   - 키보드 단축키

3. 스크린 리더 호환성
   - ARIA 레이블
   - 대체 텍스트

출력: 마크다운 형식의 접근성 검토 보고서
```

#### Agent 13: Animation Designer
```
프롬프트:
당신은 Animation Designer입니다.
프로젝트 "<프로젝트명>"에 대해 다음을 설계하세요:

1. 마이크로 인터랙션
   - 버튼 호버/클릭
   - 입력 필드 포커스
   - 로딩 상태

2. 페이지 트랜지션
   - 화면 전환 효과
   - 모달/드로어 애니메이션

3. 모션 가이드라인
   - 타이밍 함수 (easing)
   - 지속 시간 기준

출력: 마크다운 형식의 애니메이션 가이드
```

#### Agent 14: UX Auditor
```
프롬프트:
당신은 UX Auditor입니다.
지금까지 설계된 모든 내용을 종합 검토하여:

1. 휴리스틱 평가
   - Nielsen의 10가지 휴리스틱

2. 사용성 분석
   - 학습 용이성
   - 효율성
   - 오류 방지

3. 개선 권고사항
   - 필수 개선 사항
   - 권장 개선 사항

출력: 마크다운 형식의 UX 감사 보고서
```

---

## 5단계: 산출물 통합

모든 Agent 결과를 통합하여 다음 디렉토리에 문서를 생성하세요:

```
docs/prototyping/<프로젝트명>/
├── README.md                    # 프로젝트 개요
├── 01-business-analysis.md      # PM Analyst 결과
├── 02-prd.md                    # PM Planner 결과
├── 03-project-plan.md           # PM Manager 결과
├── 04-ux-flow.md                # UX Flow 결과
├── 05-layout-spec.md            # Layout 결과
├── 06-component-spec.md         # Component 결과
├── 07-color-palette.md          # Color 결과
├── 08-design-tokens.md          # Token 결과
├── 09-theme-system.md           # Theme 결과
├── 10-asset-guide.md            # Asset 결과
├── 11-responsive-review.md      # Responsive 검토
├── 12-accessibility-review.md   # A11y 검토
├── 13-animation-guide.md        # Animation 결과
└── 14-ux-audit.md               # UX 감사 결과
```

### README.md 템플릿

```markdown
# <프로젝트명> 프로토타이핑 문서

## 개요
- **프로젝트**: <프로젝트명>
- **생성일**: <날짜>
- **상태**: 프로토타이핑 완료

## 문서 목록

### Phase 1: 기획
- [비즈니스 분석](./01-business-analysis.md)
- [PRD](./02-prd.md)
- [프로젝트 계획](./03-project-plan.md)

### Phase 2: UX/UI 설계
- [UX 플로우](./04-ux-flow.md)
- [레이아웃 명세](./05-layout-spec.md)
- [컴포넌트 명세](./06-component-spec.md)

### Phase 3: 디자인 시스템
- [컬러 팔레트](./07-color-palette.md)
- [디자인 토큰](./08-design-tokens.md)
- [테마 시스템](./09-theme-system.md)
- [에셋 가이드](./10-asset-guide.md)

### Phase 4: 검증
- [반응형 검토](./11-responsive-review.md)
- [접근성 검토](./12-accessibility-review.md)
- [애니메이션 가이드](./13-animation-guide.md)
- [UX 감사](./14-ux-audit.md)

## 다음 단계

프론트엔드 개발 착수:
- `/frontend-component` - 컴포넌트 구현
- `/frontend-state` - 상태 관리
- `/frontend-api` - API 연동
```

---

## 6단계: Todo 목록 생성

TodoWrite 도구를 사용하여 프론트엔드 개발 작업 목록을 생성하세요.

---

## 주의사항

- Phase 3의 디자인 시스템 Agent들은 반드시 **병렬로** 실행하세요
- 모든 문서는 `docs/prototyping/<프로젝트명>/` 디렉토리에 생성하세요
- 기존 프로젝트의 디자인 시스템이 있다면 이를 우선 참조하세요
- 한국어로 문서를 작성하세요
