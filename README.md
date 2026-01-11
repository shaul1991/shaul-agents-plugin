# Shaul Agents Plugin

Shaul Corporation 멀티에이전트 협업 시스템을 위한 Claude Code 플러그인입니다.

> **Note**: 이 저장소는 **Private** 저장소입니다. 접근 권한이 필요합니다.

## 구성 요소

- **16개 팀**: Backend, Frontend, DevOps, SRE, Security, DBA, Design, UX-UI, PM, QA, Data, Docs, Growth, Mobile, Infra, Executive
- **78개 전문 에이전트**: 각 팀별 전문화된 AI 에이전트
- **70개+ Commands**: 역할별 슬래시 명령어

## 사전 준비

Private 저장소이므로 다음 중 하나의 인증 방법이 필요합니다:

### 방법 A: SSH 키 설정 (권장)

```bash
# SSH 키 생성 (없는 경우)
ssh-keygen -t ed25519 -C "your_email@example.com"

# SSH 공개키 복사
cat ~/.ssh/id_ed25519.pub

# GitHub Settings > SSH and GPG keys > New SSH key 에서 등록
```

### 방법 B: GitHub CLI 설치

```bash
# macOS
brew install gh

# Ubuntu/Debian
sudo apt install gh

# 로그인
gh auth login
```

## 설치 방법

### 방법 1: Makefile 사용 (권장)

```bash
# SSH 방식
git clone git@github.com:shaul1991/shaul-agents-plugin.git ~/shaul-agents-plugin

# 또는 GitHub CLI 방식
gh repo clone shaul1991/shaul-agents-plugin ~/shaul-agents-plugin

# 설치
cd ~/shaul-agents-plugin
make install
```

### 방법 2: 수동 설치

```bash
# SSH 방식으로 clone
git clone git@github.com:shaul1991/shaul-agents-plugin.git ~/shaul-agents-plugin

# 심볼릭 링크 생성
ln -sf ~/shaul-agents-plugin/commands ~/.claude/commands
ln -sf ~/shaul-agents-plugin/skills ~/.claude/skills
cp ~/shaul-agents-plugin/CLAUDE.md ~/.claude/CLAUDE.md
```

## Makefile 명령어

```
make install    - 플러그인 설치 (심볼릭 링크 생성)
make uninstall  - 플러그인 제거
make update     - 최신 버전으로 업데이트
make status     - 현재 설치 상태 확인
make backup     - 기존 설정 백업
make restore    - 백업에서 복원
make clean      - 백업 파일 삭제
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
cd ~/shaul-agents-plugin
make update
```

## 문제 해결

### Permission denied (publickey) 오류

SSH 키가 설정되지 않았습니다:
```bash
# SSH 키 생성
ssh-keygen -t ed25519 -C "your_email@example.com"

# GitHub에 공개키 등록
cat ~/.ssh/id_ed25519.pub
# 출력된 내용을 GitHub Settings > SSH keys 에 추가
```

### Repository not found 오류

저장소 접근 권한이 없습니다. 관리자에게 권한을 요청하세요.

## 주의사항

- 이 저장소는 **Private** 저장소입니다
- MCP 서버 설정(GitHub, Slack 등)은 각 컴퓨터에서 별도로 구성해야 합니다
- API 키나 credentials는 이 플러그인에 포함되지 않습니다

## 라이선스

Proprietary - Shaul Corporation
