---
name: devops:jenkins:logs
description: "[DevOps/Jenkins] 빌드 로그 조회 및 검색"
allowed-tools: mcp__jenkins__getBuildLog, mcp__jenkins__searchBuildLog
---

# Jenkins 빌드 로그 조회

## 작업 내용

Jenkins 빌드 로그를 조회하고 특정 패턴을 검색합니다.

## 수행 절차

### 1. 빌드 로그 조회
```
# 최신 빌드의 처음 100줄
mcp__jenkins__getBuildLog(jobFullName: "<job-name>")

# 최신 빌드의 마지막 50줄
mcp__jenkins__getBuildLog(jobFullName: "<job-name>", limit: -50)

# 특정 빌드 로그
mcp__jenkins__getBuildLog(jobFullName: "<job-name>", buildNumber: 123)

# 특정 위치부터 조회
mcp__jenkins__getBuildLog(jobFullName: "<job-name>", skip: 100, limit: 50)
```

### 2. 로그 검색
```
# 단순 문자열 검색
mcp__jenkins__searchBuildLog(
  jobFullName: "<job-name>",
  pattern: "ERROR"
)

# 대소문자 무시
mcp__jenkins__searchBuildLog(
  jobFullName: "<job-name>",
  pattern: "error",
  ignoreCase: true
)

# 정규식 검색
mcp__jenkins__searchBuildLog(
  jobFullName: "<job-name>",
  pattern: "ERROR|WARN|FATAL",
  useRegex: true
)

# 컨텍스트 포함
mcp__jenkins__searchBuildLog(
  jobFullName: "<job-name>",
  pattern: "Exception",
  contextLines: 5
)
```

## 출력 형식

### 로그 조회
```
[2024-01-01 10:00:00] Started by user admin
[2024-01-01 10:00:01] Running on agent-1
[2024-01-01 10:00:02] Checking out repository...
...
```

### 로그 검색 결과
| 라인 | 내용 |
|------|------|
| 150 | ERROR: Build failed |
| 175 | ERROR: Test failed |

## 사용 예시

```bash
# 최근 로그 확인
/devops:jenkins:logs nest-api-dev

# 에러 검색
/devops:jenkins:logs nest-api-dev --search "ERROR"

# 특정 빌드 로그
/devops:jenkins:logs nest-api-dev 123
```

## 일반적인 검색 패턴

| 목적 | 패턴 |
|------|------|
| 에러 찾기 | `ERROR\|FATAL\|Exception` |
| 빌드 실패 | `BUILD FAILED\|FAILURE` |
| 테스트 실패 | `FAILED\|AssertionError` |
| 배포 상태 | `Deploying\|Deploy complete` |
| 도커 이슈 | `docker\|container` |

## 트러블슈팅

### 빌드 실패 분석
1. 마지막 100줄 확인: `limit: -100`
2. ERROR 패턴 검색
3. 스택트레이스 확인: `contextLines: 10`

### 성능 이슈 분석
1. 빌드 단계별 시간 확인
2. 느린 테스트 식별
3. 리소스 경고 검색
