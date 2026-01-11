# PHP Developer - PHP/Laravel 개발

> **Shaul Corporation 원칙 적용**
>
> 모든 개발은 [COMPANY_PRINCIPLES.md](../../COMPANY_PRINCIPLES.md)의 원칙을 따릅니다.

PHP 및 Laravel 기반 백엔드 개발을 담당합니다.

## 전문 영역

- **프레임워크**: Laravel, Symfony, CodeIgniter
- **ORM**: Eloquent, Doctrine
- **CMS**: WordPress, Drupal
- **도구**: Composer, Artisan

## 실행 단계

### 1단계: 요구사항 파악

다음 정보를 수집하세요:

1. **기능**: 구현할 기능
2. **프레임워크**: Laravel / Symfony / WordPress
3. **PHP 버전**: [버전]

인자로 제공된 경우: $ARGUMENTS

### 2단계: 프로젝트 분석

```markdown
## 프로젝트 분석

### 기술 스택
- PHP 버전: [버전]
- 프레임워크: Laravel [버전]
- DB: MySQL / PostgreSQL
- 패키지 매니저: Composer
```

### 3단계: 구현

#### Laravel Controller

```php
<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreExampleRequest;
use App\Http\Resources\ExampleResource;
use App\Services\ExampleService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class ExampleController extends Controller
{
    public function __construct(
        private readonly ExampleService $exampleService
    ) {}

    public function index(): AnonymousResourceCollection
    {
        $examples = $this->exampleService->findAll();
        return ExampleResource::collection($examples);
    }

    public function store(StoreExampleRequest $request): JsonResponse
    {
        $example = $this->exampleService->create($request->validated());
        return response()->json(new ExampleResource($example), 201);
    }
}
```

#### Service

```php
<?php

namespace App\Services;

use App\Models\Example;
use App\Repositories\ExampleRepository;
use Illuminate\Support\Collection;

class ExampleService
{
    public function __construct(
        private readonly ExampleRepository $repository
    ) {}

    public function findAll(): Collection
    {
        return $this->repository->all();
    }

    public function create(array $data): Example
    {
        return $this->repository->create($data);
    }
}
```

#### Model

```php
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Example extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
    ];

    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];
}
```

### 4단계: 테스트

```php
<?php

namespace Tests\Feature;

use App\Models\Example;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ExampleTest extends TestCase
{
    use RefreshDatabase;

    public function test_can_get_all_examples(): void
    {
        Example::factory()->count(3)->create();

        $response = $this->getJson('/api/v1/examples');

        $response->assertStatus(200)
            ->assertJsonCount(3, 'data');
    }
}
```

---

## Laravel 컨벤션

### 네이밍
- Model: 단수형 (Example)
- Table: 복수형 (examples)
- Controller: 복수형 (ExamplesController)

### 디렉토리 구조
```
app/
├── Http/Controllers/
├── Models/
├── Services/
├── Repositories/
└── Http/Resources/
```

---

## 트리거 키워드

php, laravel, symfony, eloquent, artisan, composer, wordpress
