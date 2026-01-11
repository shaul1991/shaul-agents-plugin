# Shaul Corporation Agent System

> **"우리는 Shaul Corporation이다. 하나의 목표, 최선의 판단, 최고의 퍼포먼스."**

---

## 핵심 원칙

모든 에이전트는 **Shaul Corporation의 구성원**입니다. 개별 팀이나 역할에 앞서, 하나의 회사로서 공동의 목표를 향해 나아갑니다.

| 핵심 가치 | 설명 |
|-----------|------|
| **One Team** | 부서/역할을 넘어 하나의 팀으로 협력 |
| **Best Decision** | 데이터와 근거 기반 최선의 판단 |
| **Excellence** | 타협 없는 최고의 품질 추구 |

**우선순위**: 회사 전체 이익 > 팀 이익 > 개인 편의

상세 원칙: [COMPANY_PRINCIPLES.md](./COMPANY_PRINCIPLES.md)

---

## 개요

이 시스템은 직군별/역할별/작업별로 구조화된 Agent 시스템입니다.
IT 기술 개발 회사의 모든 팀을 포괄하는 **16개 팀, 62개 이상의 역할**로 구성됩니다.

## 팀 구성도

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                              Agent System                                        │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                  │
│  ┌─────────────────────────────────────────────────────────────────────────┐    │
│  │                         경영진 (Executive)                               │    │
│  │  ┌─────┐ ┌─────┐ ┌─────┐ ┌─────┐ ┌─────┐ ┌─────┐ ┌─────┐ ┌─────┐       │    │
│  │  │ CEO │ │ CTO │ │ CFO │ │ COO │ │ CPO │ │ CMO │ │CISO │ │ CDO │       │    │
│  │  └─────┘ └─────┘ └─────┘ └─────┘ └─────┘ └─────┘ └─────┘ └─────┘       │    │
│  │  ┌─────┐ ┌─────┐                                                        │    │
│  │  │ CIO │ │CHRO │                                                        │    │
│  │  └─────┘ └─────┘                                                        │    │
│  └─────────────────────────────────────────────────────────────────────────┘    │
│                                                                                  │
│  ┌─────────────────────────────────────────────────────────────────────────┐    │
│  │                           기획/관리 (PM)                                  │    │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐                               │    │
│  │  │ Planner  │  │ Manager  │  │ Analyst  │                               │    │
│  │  └──────────┘  └──────────┘  └──────────┘                               │    │
│  └─────────────────────────────────────────────────────────────────────────┘    │
│                                                                                  │
│  ┌─────────────────────────────────────────────────────────────────────────┐    │
│  │                           개발 (Dev)                                      │    │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐  │    │
│  │  │ Backend  │  │ Frontend │  │ Mobile   │  │ Data/AI  │  │ DBA      │  │    │
│  │  └──────────┘  └──────────┘  └──────────┘  └──────────┘  └──────────┘  │    │
│  └─────────────────────────────────────────────────────────────────────────┘    │
│                                                                                  │
│  ┌─────────────────────────────────────────────────────────────────────────┐    │
│  │                           디자인 (Design)                                 │    │
│  │  ┌──────────┐  ┌──────────┐                                              │    │
│  │  │ Design   │  │ UX-UI    │                                              │    │
│  │  └──────────┘  └──────────┘                                              │    │
│  └─────────────────────────────────────────────────────────────────────────┘    │
│                                                                                  │
│  ┌─────────────────────────────────────────────────────────────────────────┐    │
│  │                           운영 (Ops)                                      │    │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐                 │    │
│  │  │ DevOps   │  │ SRE      │  │ Infra    │  │ Security │                 │    │
│  │  └──────────┘  └──────────┘  └──────────┘  └──────────┘                 │    │
│  └─────────────────────────────────────────────────────────────────────────┘    │
│                                                                                  │
│  ┌─────────────────────────────────────────────────────────────────────────┐    │
│  │                           품질/문서 (QA/Docs)                             │    │
│  │  ┌──────────┐  ┌──────────┐                                              │    │
│  │  │ QA       │  │ Docs     │                                              │    │
│  │  └──────────┘  └──────────┘                                              │    │
│  └─────────────────────────────────────────────────────────────────────────┘    │
│                                                                                  │
└─────────────────────────────────────────────────────────────────────────────────┘
```

---

## 팀별 역할 및 명령어

### 0. Executive 팀 (C-Level 경영진)

| 역할 | 직책 | 주요 명령어 |
|------|------|-------------|
| CEO | 최고경영자 | `/executive-ceo-strategy` |
| CTO | 최고기술책임자 | `/executive-cto-techvision` |
| CFO | 최고재무책임자 | `/executive-cfo-budget` |
| COO | 최고운영책임자 | `/executive-coo-operations` |
| CPO | 최고제품책임자 | `/executive-cpo-roadmap` |
| CMO | 최고마케팅책임자 | `/executive-cmo-marketing` |
| CISO | 최고정보보안책임자 | `/executive-ciso-security` |
| CDO | 최고데이터책임자 | `/executive-cdo-datastrategy` |
| CIO | 최고정보책임자 | `/executive-cio-digital` |
| CHRO | 최고인사책임자 | `/executive-chro-talent` |

### 1. PM 팀 (기획/관리)

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Planner | 기획자 | `/pm-planner-spec` |
| Manager | 프로젝트 매니저 | `/pm-manager-schedule` |
| Analyst | 비즈니스 분석가 | `/pm-analyst-analyze` |

### 2. Backend 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Developer | 백엔드 개발자 | `/backend-developer-debug` |
| Architect | 아키텍트 | `/backend-architect-design` |
| Reviewer | 코드 리뷰어 | `/backend-reviewer-review` |
| **Java** | Java/Spring 개발 | `/backend-java-develop` |
| **Kotlin** | Kotlin 개발 | `/backend-kotlin-develop` |
| **Node** | Node.js/TS 개발 | `/backend-node-develop` |
| **Golang** | Go 개발 | `/backend-golang-develop` |
| **PHP** | PHP/Laravel 개발 | `/backend-php-develop` |
| **Senior** | 시니어/리드 | `/backend-senior-lead` |

### 3. Frontend 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Component | 컴포넌트 개발 | `/fe-component` |
| Hook | 커스텀 훅 | `/fe-hook` |
| State | 상태 관리 | `/fe-state` |
| API | API 연동 | `/fe-api` |
| Test | 테스트 | `/fe-test` |
| Perf | 성능 최적화 | `/fe-perf` |

### 4. Mobile 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| iOS | iOS 개발자 | `/mobile-ios-develop` |
| Android | Android 개발자 | `/mobile-android-develop` |
| Cross | 크로스플랫폼 | `/mobile-cross-develop` |

### 5. Data/AI 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Engineer | 데이터 엔지니어 | `/data-engineer-pipeline` |
| Scientist | 데이터 사이언티스트 | `/data-scientist-model` |
| Analyst | 데이터 분석가 | `/data-analyst-report` |

### 6. DBA 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Architect | DB 아키텍트 | `/dba-architect-schema` |
| Admin | DB 관리자 | `/dba-admin-backup` |
| Tuner | 성능 튜너 | `/dba-tuner-optimize` |

### 7. Design 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Assets | 에셋 관리 | `/design-assets` |
| Theme | 테마 시스템 | `/design-theme` |
| Colors | 컬러 팔레트 | `/design-colors` |
| Tokens | 디자인 토큰 | `/design-tokens` |

### 8. UX-UI 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Flow | 사용자 플로우 | `/ux-flow` |
| Audit | UX 감사 | `/ux-audit` |
| Component | UI 컴포넌트 | `/ui-component` |
| Layout | 레이아웃 | `/ui-layout` |
| Animation | 애니메이션 | `/ui-animation` |
| A11y | 접근성 | `/ui-a11y` |
| Responsive | 반응형 | `/ui-responsive` |

### 9. DevOps 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Deployer | 배포 담당 | `/devops-deployer-deploy` |
| Monitor | 모니터링 | `/devops-monitor-status` |
| Infra | 인프라 | `/devops-infra-scale` |

### 10. SRE 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Reliability | 신뢰성 엔지니어 | `/sre-reliability-slo` |
| Platform | 플랫폼 엔지니어 | `/sre-platform-devex` |
| Oncall | 온콜 엔지니어 | `/sre-oncall-incident` |

### 11. Infra 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Network | 네트워크 엔지니어 | `/infra-network-vpc` |
| Cloud | 클라우드 엔지니어 | `/infra-cloud-provision` |
| System | 시스템 엔지니어 | `/infra-system-server` |

### 12. Security 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Auditor | 보안 감사 | `/security-auditor-audit` |
| Pentester | 침투 테스터 | `/security-pentester-scan` |

### 13. QA 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Tester | 테스터 | `/qa-tester-test` |
| Analyst | 성능 분석 | `/qa-analyst-load` |

### 14. Docs 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| API | API 문서 | `/docs-api-spec` |
| Guide | 가이드 작성 | `/docs-guide-tutorial` |
| Internal | 내부 문서 | `/docs-internal-architecture` |

### 15. Growth 팀

| 역할 | 설명 | 주요 명령어 |
|------|------|-------------|
| Hacker | 성장 전략 | `/growth-hacker-strategy` |
| Acquisition | 사용자 획득 | `/growth-acquisition-channel` |
| Retention | 사용자 유지 | `/growth-retention-engage` |
| Analytics | 성장 분석 | `/growth-analytics-metrics` |
| Conversion | 전환 최적화 | `/growth-conversion-optimize` |
| Experiment | 실험 설계 | `/growth-experiment-abtest` |

---

## 파일 구조

```
~/.claude/
├── AGENTS.md                    # 이 문서
├── commands/
│   ├── pm/
│   │   ├── planner/spec.md
│   │   ├── manager/schedule.md
│   │   └── analyst/analyze.md
│   ├── backend/
│   │   ├── developer/, architect/, reviewer/
│   │   ├── java/, kotlin/, node/
│   │   ├── golang/, php/, senior/
│   ├── frontend/
│   │   ├── component/, hook/, state/
│   │   ├── api/, test/, perf/
│   │   └── build/, lint/, refactor/
│   ├── mobile/
│   │   ├── ios/develop.md
│   │   ├── android/develop.md
│   │   └── cross/develop.md
│   ├── data/
│   │   ├── engineer/pipeline.md
│   │   ├── scientist/model.md
│   │   └── analyst/report.md
│   ├── dba/
│   │   ├── architect/schema.md
│   │   ├── admin/backup.md
│   │   └── tuner/optimize.md
│   ├── design/
│   │   ├── assets/, theme/
│   │   └── colors/, tokens/
│   ├── ux-ui/
│   │   ├── flow/, audit/
│   │   └── component/, layout/
│   ├── devops/
│   │   ├── deployer/
│   │   ├── monitor/
│   │   └── infra/
│   ├── sre/
│   │   ├── reliability/slo.md
│   │   ├── platform/devex.md
│   │   └── oncall/incident.md
│   ├── infra/
│   │   ├── network/vpc.md
│   │   ├── cloud/provision.md
│   │   └── system/server.md
│   ├── security/
│   │   ├── auditor/
│   │   └── pentester/
│   ├── qa/
│   │   ├── tester/
│   │   └── analyst/
│   ├── docs/
│   │   ├── api/spec.md
│   │   ├── guide/tutorial.md
│   │   └── internal/architecture.md
│   └── growth/
│       ├── hacker/strategy.md
│       ├── acquisition/channel.md
│       ├── retention/engage.md
│       ├── analytics/metrics.md
│       ├── conversion/optimize.md
│       └── experiment/abtest.md
└── skills/
    ├── pm-planner/, pm-manager/, pm-analyst/
    ├── backend-developer/, backend-architect/, backend-reviewer/
    ├── backend-java/, backend-kotlin/, backend-node/
    ├── backend-golang/, backend-php/, backend-senior/
    ├── frontend-*/ (component, hook, state, api, test, perf 등)
    ├── mobile-ios/, mobile-android/, mobile-cross/
    ├── data-engineer/, data-scientist/, data-analyst/
    ├── dba-architect/, dba-admin/, dba-tuner/
    ├── design-*/ (assets, theme, colors, tokens)
    ├── ux-ui-*/ (flow, audit, component, layout 등)
    ├── devops-deployer/, devops-monitor/, devops-infra/
    ├── sre-reliability/, sre-platform/, sre-oncall/
    ├── infra-network/, infra-cloud/, infra-system/
    ├── security-auditor/, security-pentester/
    ├── qa-tester/, qa-analyst/
    ├── docs-api/, docs-guide/, docs-internal/
    └── growth-*/ (hacker, acquisition, retention, analytics, conversion, experiment)
```

---

## 사용 예시

```bash
# 기획 단계
/pm-planner-spec 로그인 기능        # 기능 명세 작성
/pm-analyst-analyze 경쟁사          # 경쟁사 분석

# 설계 단계
/backend-architect-design           # 백엔드 아키텍처
/dba-architect-schema users         # DB 스키마 설계
/ux-flow 로그인                     # 사용자 플로우

# 개발 단계
/fe-component Button               # 프론트엔드 컴포넌트
/mobile-ios-develop 푸시알림        # iOS 개발
/data-engineer-pipeline ETL         # 데이터 파이프라인

# 배포/운영 단계
/devops-deployer-deploy prod        # 프로덕션 배포
/sre-reliability-slo api            # SLO 설정
/infra-cloud-provision eks          # 클라우드 프로비저닝

# 품질/보안 단계
/qa-tester-test integration         # 통합 테스트
/security-auditor-audit             # 보안 감사
/docs-api-spec users                # API 문서화
```

---

## Skills 트리거

각 팀의 Skill은 관련 키워드 요청 시 자동 활성화됩니다.

| 팀 | 트리거 키워드 |
|----|---------------|
| PM | 기획, 명세, 일정, 분석, ROI, KPI |
| Backend | 개발, API, 디버그, 설계, 리뷰 |
| Frontend | 컴포넌트, 훅, 상태, 테스트, 성능 |
| Mobile | iOS, Android, 앱, 모바일 |
| Data/AI | 파이프라인, ML, 모델, 분석, 리포트 |
| DBA | 스키마, 쿼리, 인덱스, 백업, 최적화 |
| Design | 디자인, 테마, 컬러, 토큰, 에셋 |
| UX-UI | UX, UI, 플로우, 접근성, 반응형 |
| DevOps | 배포, CI/CD, 모니터링, 스케일링 |
| SRE | SLO, SLI, 인시던트, 가용성 |
| Infra | VPC, 클라우드, 서버, 네트워크 |
| Security | 보안, 취약점, 감사, 스캔 |
| QA | 테스트, E2E, 부하, 품질 |
| Docs | 문서, API 문서, 튜토리얼, 가이드 |
| Growth | 성장, 획득, 유지, 전환, 실험, A/B |

---

## 오케스트레이터 명령어

여러 팀이 협업하는 고급 명령어입니다.

| 명령어 | 설명 | 참여 팀 |
|--------|------|---------|
| `/new-feature` | 새 기능 개발 계획 | Backend, DevOps, QA, Security |
| `/team-discussion` | 팀 간 협업 토론 | 선택 가능 (전체 16개 팀) |

### /team-discussion

여러 팀이 하나의 의제에 대해 토론하고 합의에 도달합니다.

**워크플로우**:
```
1단계: 의제 설정 → 2단계: 1차 의견 수집 (병렬)
    ↓
3단계: 충돌 분석 → 4단계: 크로스 리뷰 (병렬)
    ↓
5단계: 합의 도출 → 6단계: 결과 문서화
```

**핵심 기능**:
- ✅ 다중 팀 병렬 의견 수집
- ✅ 충돌 자동 감지
- ✅ 크로스 리뷰 (팀 간 피드백)
- ✅ 합의 도출
- ✅ 결과 문서화

**사용 예시**:
```bash
/team-discussion 마이크로서비스 전환 검토
/team-discussion 기술 스택 선정
```
