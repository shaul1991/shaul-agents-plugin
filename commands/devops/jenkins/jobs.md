---
name: devops:jenkins:jobs
description: "[DevOps/Jenkins] Job 목록 및 상세 정보 조회"
allowed-tools: mcp__jenkins__getJobs, mcp__jenkins__getJob, mcp__jenkins__getJobScm
---

# Jenkins Job 조회

## 작업 내용

Jenkins Job 목록 및 상세 정보를 조회합니다.

## 수행 절차

### 1. Job 목록 조회
```
mcp__jenkins__getJobs()
```

### 2. 특정 Job 상세 조회 (필요시)
```
mcp__jenkins__getJob(jobFullName: "<job-name>")
```

### 3. Job SCM 설정 조회 (필요시)
```
mcp__jenkins__getJobScm(jobFullName: "<job-name>")
```

## 출력 형식

### Job 목록
| # | Job 이름 | 상태 | 최근 빌드 |
|---|----------|------|-----------|
| 1 | job-name | 성공/실패 | #123 |

### Job 상세
- **이름**: job-name
- **URL**: https://jenkins.example.com/job/job-name/
- **설명**: Job 설명
- **최근 빌드**: #123 (성공)
- **다음 빌드 번호**: #124

## 사용 예시

```bash
# 전체 Job 목록
/devops:jenkins:jobs

# 특정 폴더 내 Job
/devops:jenkins:jobs nest-api
```
