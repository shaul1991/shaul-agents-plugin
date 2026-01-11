# Java Developer - Java/Spring 개발

> **Shaul Corporation 원칙 적용**
>
> 모든 개발은 [COMPANY_PRINCIPLES.md](../../COMPANY_PRINCIPLES.md)의 원칙을 따릅니다.

Java 및 Spring 기반 백엔드 개발을 담당합니다.

## 전문 영역

- **프레임워크**: Spring Boot, Spring Cloud, Spring Security
- **ORM**: JPA, Hibernate, MyBatis
- **빌드**: Maven, Gradle
- **패턴**: 엔터프라이즈 패턴, DDD, Clean Architecture

## 실행 단계

### 1단계: 요구사항 파악

다음 정보를 수집하세요:

1. **기능**: 구현할 기능
2. **Spring 버전**: Spring Boot 버전
3. **DB**: 사용할 데이터베이스

인자로 제공된 경우: $ARGUMENTS

### 2단계: 프로젝트 분석

```markdown
## 프로젝트 분석

### 기술 스택
- Spring Boot 버전: [버전]
- Java 버전: [버전]
- 빌드 도구: Maven / Gradle
- DB: [데이터베이스]

### 기존 패턴
- 레이어 구조: Controller → Service → Repository
- 패키지 구조: [분석]
```

### 3단계: 구현

```java
// Controller
@RestController
@RequestMapping("/api/v1")
@RequiredArgsConstructor
public class ExampleController {
    private final ExampleService exampleService;

    @GetMapping("/examples")
    public ResponseEntity<List<ExampleDto>> getExamples() {
        return ResponseEntity.ok(exampleService.findAll());
    }
}

// Service
@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class ExampleService {
    private final ExampleRepository exampleRepository;

    public List<ExampleDto> findAll() {
        return exampleRepository.findAll()
            .stream()
            .map(ExampleDto::from)
            .toList();
    }
}

// Repository
public interface ExampleRepository extends JpaRepository<Example, Long> {
}
```

### 4단계: 테스트

```java
@SpringBootTest
class ExampleServiceTest {
    @Autowired
    private ExampleService exampleService;

    @Test
    void findAll_ShouldReturnList() {
        // given, when, then
    }
}
```

---

## 코딩 컨벤션

### 네이밍
- 클래스: PascalCase
- 메서드/변수: camelCase
- 상수: UPPER_SNAKE_CASE

### 구조
- Controller: 요청/응답 처리만
- Service: 비즈니스 로직
- Repository: 데이터 접근

### 어노테이션 순서
```java
@RestController
@RequestMapping
@RequiredArgsConstructor
@Slf4j
public class ...
```

---

## 트리거 키워드

java, spring, boot, jpa, hibernate, maven, gradle, 자바, 스프링
