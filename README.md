# Shaul Agents Plugin

Shaul Corporation 멀티에이전트 협업 시스템을 위한 Claude Code 플러그인입니다.

## 구성 요소

- **16개 팀**: Backend, Frontend, DevOps, SRE, Security, DBA, Design, UX-UI, PM, QA, Data, Docs, Growth, Mobile, Infra, Executive
- **78개 전문 에이전트**: 각 팀별 전문화된 AI 에이전트
- **70개+ Commands**: 역할별 슬래시 명령어

## 설치 방법

### 방법 1: 직접 Clone (권장)

```bash
# 플러그인 저장소 clone
git clone https://github.com/YOUR_USERNAME/shaul-agents-plugin.git ~/shaul-agents-plugin

# 심볼릭 링크 생성
ln -s ~/shaul-agents-plugin/commands ~/.claude/commands
ln -s ~/shaul-agents-plugin/skills ~/.claude/skills
cp ~/shaul-agents-plugin/CLAUDE.md ~/.claude/CLAUDE.md
```

### 방법 2: plugins 디렉토리에 직접 설치

```bash
cd ~/.claude
git clone https://github.com/YOUR_USERNAME/shaul-agents-plugin.git plugins/shaul-agents
```

## 사용 방법

### 슬래시 명령어 사용

```
/backend-developer       # 백엔드 개발자 에이전트
/frontend-component      # 프론트엔드 컴포넌트 에이전트
/devops-deployer         # DevOps 배포 에이전트
/security-auditor        # 보안 감사 에이전트
```

### 에이전트 확인

```
/agents                  # 설치된 에이전트 목록 확인
```

## 팀별 에이전트 목록

### Backend (9개)
- backend-architect, backend-developer, backend-golang, backend-java
- backend-kotlin, backend-node, backend-php, backend-reviewer, backend-senior

### Frontend (11개)
- frontend-api, frontend-build, frontend-component, frontend-hook
- frontend-lint, frontend-perf, frontend-refactor, frontend-socket
- frontend-state, frontend-test

### DevOps (3개)
- devops-deployer, devops-infra, devops-monitor

### SRE (3개)
- sre-oncall, sre-platform, sre-reliability

### Security (2개)
- security-auditor, security-pentester

### DBA (3개)
- dba-admin, dba-architect, dba-tuner

### Design (4개)
- design-assets, design-colors, design-theme, design-tokens

### UX-UI (7개)
- ux-ui-a11y, ux-ui-animation, ux-ui-audit, ux-ui-component
- ux-ui-flow, ux-ui-layout, ux-ui-responsive

### PM (3개)
- pm-analyst, pm-manager, pm-planner

### QA (2개)
- qa-analyst, qa-tester

### Data (3개)
- data-analyst, data-engineer, data-scientist

### Docs (3개)
- docs-api, docs-guide, docs-internal

### Growth (6개)
- growth-acquisition, growth-analytics, growth-conversion
- growth-experiment, growth-hacker, growth-retention

### Mobile (3개)
- mobile-android, mobile-cross, mobile-ios

### Infra (3개)
- infra-cloud, infra-network, infra-system

### Executive (10개)
- executive-cdo, executive-ceo, executive-cfo, executive-chro
- executive-cio, executive-ciso, executive-cmo, executive-coo
- executive-cpo, executive-cto

### 특수 에이전트 (2개)
- new-feature: 새 기능 개발 오케스트레이터
- team-discussion: 팀 간 협업 토론 오케스트레이터

## 업데이트

```bash
cd ~/shaul-agents-plugin  # 또는 설치된 경로
git pull origin main
```

## 주의사항

- MCP 서버 설정(GitHub, Slack 등)은 각 컴퓨터에서 별도로 구성해야 합니다.
- API 키나 credentials는 이 플러그인에 포함되지 않습니다.

## 라이선스

MIT License
