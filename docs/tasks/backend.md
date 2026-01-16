# Backend 태스크 관리

> 마지막 업데이트: 2025-01-16

## 요약

| 상태 | 개수 |
|------|------|
| ✅ 완료 | 2 |
| ⏳ 진행중 | 1 |
| ❌ 미완료 | 2 |
| **전체** | **5** |

---

## auth

### jwt-token-service
- **상태**: ✅ 완료
- **담당자**: @developer1
- **마감일**: 2025-01-10
- **설명**: JWT 토큰 발급 및 검증 서비스 구현

#### 작업 목록
- [x] JWT 토큰 생성 로직 구현
- [x] Access Token 발급 API 구현
- [x] Refresh Token 발급 및 갱신 로직 구현
- [x] 토큰 검증 미들웨어 구현
- [x] 단위 테스트 작성

### oauth2-integration
- **상태**: ⏳ 진행중
- **담당자**: @developer2
- **마감일**: 2025-01-20
- **설명**: Google/Kakao OAuth2 소셜 로그인 연동

#### 작업 목록
- [x] OAuth2 설정 구조 설계
- [x] Google OAuth2 연동
- [ ] Kakao OAuth2 연동
- [ ] 소셜 계정 연결/해제 기능
- [ ] 단위 테스트 작성

---

## user-management

### member-entity
- **상태**: ✅ 완료
- **담당자**: @developer1
- **마감일**: 2025-01-08
- **설명**: Member 엔티티 및 Repository 구현

#### 작업 목록
- [x] Member 엔티티 정의
- [x] Member Repository 구현
- [x] 데이터베이스 마이그레이션 작성
- [x] 단위 테스트 작성

### user-profile-api
- **상태**: ❌ 미완료
- **담당자**: @developer3
- **마감일**: 2025-01-25
- **설명**: 사용자 프로필 조회/수정 API 구현

#### 작업 목록
- [ ] 프로필 조회 API 구현 (GET /users/:id/profile)
- [ ] 프로필 수정 API 구현 (PATCH /users/:id/profile)
- [ ] 프로필 이미지 업로드 기능
- [ ] DTO 및 Validation 추가
- [ ] 단위 테스트 작성

---

## notification

### email-service
- **상태**: ❌ 미완료
- **담당자**: @developer2
- **마감일**: 2025-01-30
- **설명**: 이메일 발송 서비스 구현

#### 작업 목록
- [ ] 이메일 서비스 모듈 설정 (Nodemailer/SendGrid)
- [ ] 이메일 템플릿 시스템 구현
- [ ] 회원가입 인증 이메일 발송
- [ ] 비밀번호 재설정 이메일 발송
- [ ] 이메일 발송 큐 구현 (Bull Queue)
- [ ] 단위 테스트 작성

---

## 변경 이력

| 날짜 | 변경 내용 | 작성자 |
|------|-----------|--------|
| 2025-01-16 | 초기 생성 | @admin |
| 2025-01-10 | jwt-token-service 완료 | @developer1 |
| 2025-01-08 | member-entity 완료 | @developer1 |
