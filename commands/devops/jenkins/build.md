---
name: devops:jenkins:build
description: "[DevOps/Jenkins] 빌드 트리거 및 관리"
allowed-tools: mcp__jenkins__triggerBuild, mcp__jenkins__getBuild, mcp__jenkins__updateBuild, mcp__jenkins__getBuildScm, mcp__jenkins__getBuildChangeSets, mcp__jenkins__getTestResults
---

# Jenkins 빌드 관리

## 작업 내용

Jenkins 빌드를 트리거하고 상태를 관리합니다.

## 수행 절차

### 1. 빌드 트리거
```
mcp__jenkins__triggerBuild(jobFullName: "<job-name>")

# 파라미터와 함께
mcp__jenkins__triggerBuild(jobFullName: "<job-name>", parameters: {"BRANCH": "develop"})
```

### 2. 빌드 상태 확인
```
# 최신 빌드
mcp__jenkins__getBuild(jobFullName: "<job-name>")

# 특정 빌드
mcp__jenkins__getBuild(jobFullName: "<job-name>", buildNumber: 123)
```

### 3. 빌드 변경사항 확인
```
mcp__jenkins__getBuildChangeSets(jobFullName: "<job-name>")
```

### 4. 테스트 결과 확인
```
mcp__jenkins__getTestResults(jobFullName: "<job-name>")

# 실패한 테스트만
mcp__jenkins__getTestResults(jobFullName: "<job-name>", onlyFailingTests: true)
```

### 5. 빌드 정보 업데이트
```
mcp__jenkins__updateBuild(
  jobFullName: "<job-name>",
  displayName: "v1.0.0",
  description: "Release build"
)
```

## 출력 형식

### 빌드 상태
| 항목 | 값 |
|------|-----|
| 빌드 번호 | #123 |
| 상태 | SUCCESS / FAILURE / BUILDING |
| 시작 시간 | 2024-01-01 10:00:00 |
| 소요 시간 | 2m 30s |
| 트리거 | SCM Change / Manual |

### 테스트 결과
| 항목 | 개수 |
|------|------|
| 전체 | 100 |
| 성공 | 98 |
| 실패 | 2 |
| 스킵 | 0 |

## 사용 예시

```bash
# 개발 환경 빌드 트리거
/devops:jenkins:build nest-api-dev

# 운영 환경 빌드 트리거
/devops:jenkins:build nest-api-prod

# 특정 빌드 상태 확인
/devops:jenkins:build nest-api-dev 123
```

## 주의사항

- 운영 환경(prod) 빌드 트리거 전 반드시 확인
- 빌드 중인 Job에 재빌드 시 큐에 대기
- 파라미터가 필요한 Job은 올바른 값 전달 필요
