# Golang Developer - Go 개발

> **Shaul Corporation 원칙 적용**
>
> 모든 개발은 [COMPANY_PRINCIPLES.md](../../COMPANY_PRINCIPLES.md)의 원칙을 따릅니다.

Go 언어 기반 백엔드 개발을 담당합니다.

## 전문 영역

- **프레임워크**: Gin, Echo, Fiber, Chi
- **ORM**: GORM, sqlx, ent
- **특징**: 고성능, 동시성, 마이크로서비스
- **도구**: CLI, 시스템 프로그래밍

## 실행 단계

### 1단계: 요구사항 파악

다음 정보를 수집하세요:

1. **기능**: 구현할 기능
2. **프레임워크**: Gin / Echo / Fiber
3. **ORM**: GORM / sqlx

인자로 제공된 경우: $ARGUMENTS

### 2단계: 프로젝트 분석

```markdown
## 프로젝트 분석

### 기술 스택
- Go 버전: [버전]
- 프레임워크: Gin / Echo
- ORM: GORM / sqlx
- 프로젝트 구조: [분석]
```

### 3단계: 구현

#### Gin

```go
// Handler
func (h *ExampleHandler) GetExamples(c *gin.Context) {
    examples, err := h.service.FindAll(c.Request.Context())
    if err != nil {
        c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
        return
    }
    c.JSON(http.StatusOK, examples)
}

// Service
type ExampleService struct {
    repo ExampleRepository
}

func (s *ExampleService) FindAll(ctx context.Context) ([]Example, error) {
    return s.repo.FindAll(ctx)
}

// Repository
type ExampleRepository interface {
    FindAll(ctx context.Context) ([]Example, error)
    FindByID(ctx context.Context, id uint) (*Example, error)
    Create(ctx context.Context, example *Example) error
}

// Model
type Example struct {
    ID        uint      `json:"id" gorm:"primaryKey"`
    Name      string    `json:"name"`
    CreatedAt time.Time `json:"created_at"`
    UpdatedAt time.Time `json:"updated_at"`
}
```

#### Router 설정

```go
func SetupRouter(h *ExampleHandler) *gin.Engine {
    r := gin.Default()

    v1 := r.Group("/api/v1")
    {
        v1.GET("/examples", h.GetExamples)
        v1.POST("/examples", h.CreateExample)
        v1.GET("/examples/:id", h.GetExample)
    }

    return r
}
```

### 4단계: 테스트

```go
func TestExampleService_FindAll(t *testing.T) {
    // Arrange
    mockRepo := new(MockExampleRepository)
    service := NewExampleService(mockRepo)

    expected := []Example{{ID: 1, Name: "Test"}}
    mockRepo.On("FindAll", mock.Anything).Return(expected, nil)

    // Act
    result, err := service.FindAll(context.Background())

    // Assert
    assert.NoError(t, err)
    assert.Equal(t, expected, result)
}
```

---

## Go 관용구

### 에러 처리
```go
if err != nil {
    return fmt.Errorf("failed to find: %w", err)
}
```

### 동시성
```go
var wg sync.WaitGroup
ch := make(chan Result, 10)

for _, item := range items {
    wg.Add(1)
    go func(i Item) {
        defer wg.Done()
        ch <- process(i)
    }(item)
}
```

### 프로젝트 구조
```
/cmd          # 메인 애플리케이션
/internal     # 비공개 코드
/pkg          # 공개 라이브러리
/api          # API 정의
```

---

## 트리거 키워드

go, golang, gin, echo, fiber, gorm, 고랭
