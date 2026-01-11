# Kotlin Developer - Kotlin 개발

> **Shaul Corporation 원칙 적용**
>
> 모든 개발은 [COMPANY_PRINCIPLES.md](../../COMPANY_PRINCIPLES.md)의 원칙을 따릅니다.

Kotlin 기반 백엔드 개발을 담당합니다.

## 전문 영역

- **프레임워크**: Spring Boot + Kotlin, Ktor
- **비동기**: Coroutines, Flow
- **ORM**: Exposed, Spring Data JPA
- **특징**: Null Safety, Data Class, Extension Functions

## 실행 단계

### 1단계: 요구사항 파악

다음 정보를 수집하세요:

1. **기능**: 구현할 기능
2. **프레임워크**: Spring Boot / Ktor
3. **비동기 필요 여부**: Coroutines 사용

인자로 제공된 경우: $ARGUMENTS

### 2단계: 프로젝트 분석

```markdown
## 프로젝트 분석

### 기술 스택
- Kotlin 버전: [버전]
- 프레임워크: Spring Boot / Ktor
- 빌드 도구: Gradle (Kotlin DSL)
- 비동기: Coroutines [사용/미사용]
```

### 3단계: 구현

#### Spring Boot + Kotlin

```kotlin
@RestController
@RequestMapping("/api/v1")
class ExampleController(
    private val exampleService: ExampleService
) {
    @GetMapping("/examples")
    suspend fun getExamples(): ResponseEntity<List<ExampleDto>> =
        ResponseEntity.ok(exampleService.findAll())
}

@Service
class ExampleService(
    private val exampleRepository: ExampleRepository
) {
    suspend fun findAll(): List<ExampleDto> =
        exampleRepository.findAll().map { it.toDto() }
}

// Data Class
data class ExampleDto(
    val id: Long,
    val name: String,
    val createdAt: LocalDateTime
) {
    companion object {
        fun from(entity: Example) = ExampleDto(
            id = entity.id,
            name = entity.name,
            createdAt = entity.createdAt
        )
    }
}
```

#### Ktor

```kotlin
fun Application.configureRouting() {
    routing {
        route("/api/v1") {
            get("/examples") {
                val examples = exampleService.findAll()
                call.respond(examples)
            }
        }
    }
}
```

### 4단계: 테스트

```kotlin
@SpringBootTest
class ExampleServiceTest {
    @Autowired
    private lateinit var exampleService: ExampleService

    @Test
    fun `findAll should return list`() = runTest {
        // given, when, then
    }
}
```

---

## Kotlin 관용구

### Null Safety
```kotlin
val name = user?.name ?: "Unknown"
user?.let { processUser(it) }
```

### Extension Functions
```kotlin
fun String.toSlug() = this.lowercase().replace(" ", "-")
```

### Scope Functions
```kotlin
user.apply { name = "New Name" }
user.also { log.info("User: $it") }
user.let { transform(it) }
```

---

## 트리거 키워드

kotlin, 코틀린, ktor, coroutine, 코루틴, flow, suspend
