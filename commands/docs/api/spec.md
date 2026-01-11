---
description: "[Docs/API] API 문서 작성"
argument-hint: [api-name]
allowed-tools: Read, Write, Edit, Grep, Glob
---

# Docs API - API 문서 작성

## Agent 정보
- **팀**: Docs
- **역할**: API (API 문서 작성자)
- **작업**: Spec (API 명세 작성)

## API: $ARGUMENTS

## OpenAPI 스펙
```yaml
openapi: 3.0.3
info:
  title: API 명
  version: 1.0.0
paths:
  /resource:
    get:
      summary: 리소스 조회
```

## 작업 수행
$ARGUMENTS API에 대해 OpenAPI 스펙, 레퍼런스 문서를 작성합니다.
