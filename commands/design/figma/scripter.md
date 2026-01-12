# [Design/Figma] Scripter 코드 생성

Figma Scripter 플러그인에서 실행할 수 있는 Plugin API 코드를 생성합니다.

## 사용법

```bash
/design-figma-scripter 버튼 컴포넌트
/design-figma-scripter 카드 레이아웃
/design-figma-scripter 네비게이션 바
```

## 입력

$ARGUMENTS

## 지침

1. **요청 분석**: 사용자가 원하는 UI 컴포넌트/레이아웃 파악
2. **코드 생성**: Figma Plugin API를 사용한 TypeScript 코드 작성
3. **실행 가이드**: Scripter에서 실행하는 방법 안내

## 코드 생성 규칙

### 필수 포함 사항
- 폰트 로드 (텍스트 사용 시)
- 뷰포트 이동 및 선택
- 주석으로 각 섹션 설명

### 색상 변환
- HEX 색상을 0-1 범위 RGB로 변환
- 예: `#3B82F6` → `{ r: 0.231, g: 0.510, b: 0.965 }`

### 컴포넌트 구조
```typescript
// 1. 폰트 로드
await figma.loadFontAsync({ family: "Inter", style: "Regular" })

// 2. 메인 Frame 생성
const frame = figma.createFrame()
frame.name = "Component Name"
// ... 설정 ...

// 3. 자식 요소 생성 및 추가
const child = figma.createRectangle()
frame.appendChild(child)

// 4. 뷰포트 이동
figma.currentPage.selection = [frame]
figma.viewport.scrollAndZoomIntoView([frame])
```

## 출력 형식

```
## [컴포넌트명] Figma Scripter 코드

### 실행 방법
1. Figma에서 Plugins → Scripter 실행
2. 아래 코드를 복사하여 붙여넣기
3. Run 버튼 클릭 (또는 Cmd/Ctrl + Enter)

### 코드

\`\`\`typescript
// 코드 내용
\`\`\`

### 커스터마이징 가이드
- 색상 변경: `fills` 속성의 color 값 수정
- 크기 변경: `resize(width, height)` 값 수정
- 텍스트 변경: `characters` 속성 수정
```

## 참조

- [Figma Plugin API 문서](https://www.figma.com/plugin-docs/)
- skill: design-figma
