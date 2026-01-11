# Shaul Agents Plugin - Makefile
# 사용법: make install | make uninstall | make update | make status

PLUGIN_DIR := $(shell pwd)
CLAUDE_DIR := $(HOME)/.claude
COMMANDS_LINK := $(CLAUDE_DIR)/commands
SKILLS_LINK := $(CLAUDE_DIR)/skills

.PHONY: help install uninstall update status backup restore clean

# 기본 명령어: 도움말 표시
help:
	@echo ""
	@echo "╔═══════════════════════════════════════════════════════════╗"
	@echo "║       Shaul Agents Plugin - 설치 관리 도구                ║"
	@echo "╠═══════════════════════════════════════════════════════════╣"
	@echo "║  make install    - 플러그인 설치 (심볼릭 링크 생성)       ║"
	@echo "║  make uninstall  - 플러그인 제거 (원본 복원)              ║"
	@echo "║  make update     - 최신 버전으로 업데이트                 ║"
	@echo "║  make status     - 현재 설치 상태 확인                    ║"
	@echo "║  make backup     - 기존 설정 백업                         ║"
	@echo "║  make restore    - 백업에서 복원                          ║"
	@echo "║  make clean      - 백업 파일 삭제                         ║"
	@echo "╚═══════════════════════════════════════════════════════════╝"
	@echo ""

# 플러그인 설치
install: backup
	@echo "🔧 플러그인 설치 중..."
	@mkdir -p $(CLAUDE_DIR)
	@# 기존 심볼릭 링크 또는 디렉토리 제거
	@rm -rf $(COMMANDS_LINK) 2>/dev/null || true
	@rm -rf $(SKILLS_LINK) 2>/dev/null || true
	@# 심볼릭 링크 생성
	@ln -sf $(PLUGIN_DIR)/commands $(COMMANDS_LINK)
	@ln -sf $(PLUGIN_DIR)/skills $(SKILLS_LINK)
	@# CLAUDE.md 복사
	@cp -f $(PLUGIN_DIR)/CLAUDE.md $(CLAUDE_DIR)/CLAUDE.md
	@echo "✅ 설치 완료!"
	@echo ""
	@echo "📁 심볼릭 링크:"
	@ls -la $(COMMANDS_LINK) $(SKILLS_LINK)
	@echo ""
	@echo "💡 Claude Code를 재시작하면 78개 에이전트를 사용할 수 있습니다."

# 플러그인 제거
uninstall:
	@echo "🗑️  플러그인 제거 중..."
	@rm -f $(COMMANDS_LINK) 2>/dev/null || true
	@rm -f $(SKILLS_LINK) 2>/dev/null || true
	@echo "✅ 심볼릭 링크 제거 완료!"
	@# 백업이 있으면 복원 안내
	@if [ -d "$(CLAUDE_DIR)/commands.backup" ]; then \
		echo ""; \
		echo "💡 백업을 복원하려면: make restore"; \
	fi

# 최신 버전으로 업데이트
update:
	@echo "🔄 업데이트 확인 중..."
	@git fetch origin
	@git pull origin main
	@echo "✅ 업데이트 완료!"
	@git log -1 --format="📌 최신 커밋: %h - %s (%cr)"

# 현재 상태 확인
status:
	@echo ""
	@echo "📊 Shaul Agents Plugin 상태"
	@echo "═══════════════════════════════════════"
	@echo ""
	@echo "📁 플러그인 위치: $(PLUGIN_DIR)"
	@echo ""
	@# Commands 링크 확인
	@if [ -L "$(COMMANDS_LINK)" ]; then \
		echo "✅ commands: 심볼릭 링크 설정됨"; \
		echo "   → $$(readlink $(COMMANDS_LINK))"; \
	elif [ -d "$(COMMANDS_LINK)" ]; then \
		echo "⚠️  commands: 일반 디렉토리 (플러그인 미적용)"; \
	else \
		echo "❌ commands: 없음"; \
	fi
	@echo ""
	@# Skills 링크 확인
	@if [ -L "$(SKILLS_LINK)" ]; then \
		echo "✅ skills: 심볼릭 링크 설정됨"; \
		echo "   → $$(readlink $(SKILLS_LINK))"; \
	elif [ -d "$(SKILLS_LINK)" ]; then \
		echo "⚠️  skills: 일반 디렉토리 (플러그인 미적용)"; \
	else \
		echo "❌ skills: 없음"; \
	fi
	@echo ""
	@# 백업 확인
	@if [ -d "$(CLAUDE_DIR)/commands.backup" ]; then \
		echo "💾 백업: commands.backup 존재"; \
	fi
	@if [ -d "$(CLAUDE_DIR)/skills.backup" ]; then \
		echo "💾 백업: skills.backup 존재"; \
	fi
	@echo ""
	@# Git 상태
	@echo "📌 Git 상태:"
	@git log -1 --format="   현재 버전: %h - %s (%cr)"
	@echo ""

# 기존 설정 백업
backup:
	@echo "💾 기존 설정 백업 중..."
	@# commands 백업 (심볼릭 링크가 아닌 경우만)
	@if [ -d "$(COMMANDS_LINK)" ] && [ ! -L "$(COMMANDS_LINK)" ]; then \
		mv $(COMMANDS_LINK) $(CLAUDE_DIR)/commands.backup; \
		echo "   ✓ commands → commands.backup"; \
	fi
	@# skills 백업 (심볼릭 링크가 아닌 경우만)
	@if [ -d "$(SKILLS_LINK)" ] && [ ! -L "$(SKILLS_LINK)" ]; then \
		mv $(SKILLS_LINK) $(CLAUDE_DIR)/skills.backup; \
		echo "   ✓ skills → skills.backup"; \
	fi
	@echo "✅ 백업 완료!"

# 백업에서 복원
restore: uninstall
	@echo "♻️  백업에서 복원 중..."
	@if [ -d "$(CLAUDE_DIR)/commands.backup" ]; then \
		mv $(CLAUDE_DIR)/commands.backup $(COMMANDS_LINK); \
		echo "   ✓ commands.backup → commands"; \
	else \
		echo "   ⚠️  commands.backup 없음"; \
	fi
	@if [ -d "$(CLAUDE_DIR)/skills.backup" ]; then \
		mv $(CLAUDE_DIR)/skills.backup $(SKILLS_LINK); \
		echo "   ✓ skills.backup → skills"; \
	else \
		echo "   ⚠️  skills.backup 없음"; \
	fi
	@echo "✅ 복원 완료!"

# 백업 파일 삭제
clean:
	@echo "🧹 백업 파일 삭제 중..."
	@rm -rf $(CLAUDE_DIR)/commands.backup 2>/dev/null || true
	@rm -rf $(CLAUDE_DIR)/skills.backup 2>/dev/null || true
	@echo "✅ 정리 완료!"
