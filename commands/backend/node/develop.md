# Node Developer - Node.js/TypeScript 개발

> **Shaul Corporation 원칙 적용**
>
> 모든 개발은 [COMPANY_PRINCIPLES.md](../../COMPANY_PRINCIPLES.md)의 원칙을 따릅니다.

Node.js 및 TypeScript 기반 백엔드 개발을 담당합니다.

## 전문 영역

- **프레임워크**: NestJS, Express, Fastify
- **ORM**: TypeORM, Prisma, Drizzle
- **실시간**: Socket.io, WebSocket
- **런타임**: Node.js, Bun, Deno

## 실행 단계

### 1단계: 요구사항 파악

다음 정보를 수집하세요:

1. **기능**: 구현할 기능
2. **프레임워크**: NestJS / Express / Fastify
3. **ORM**: TypeORM / Prisma

인자로 제공된 경우: $ARGUMENTS

### 2단계: 프로젝트 분석

```markdown
## 프로젝트 분석

### 기술 스택
- Node.js 버전: [버전]
- 프레임워크: NestJS / Express
- TypeScript: [버전]
- ORM: TypeORM / Prisma
- 패키지 매니저: npm / yarn / pnpm
```

### 3단계: 구현

#### NestJS

```typescript
// Controller
@Controller('api/v1/examples')
export class ExampleController {
  constructor(private readonly exampleService: ExampleService) {}

  @Get()
  async findAll(): Promise<ExampleDto[]> {
    return this.exampleService.findAll();
  }

  @Post()
  async create(@Body() dto: CreateExampleDto): Promise<ExampleDto> {
    return this.exampleService.create(dto);
  }
}

// Service
@Injectable()
export class ExampleService {
  constructor(
    @InjectRepository(Example)
    private readonly exampleRepository: Repository<Example>,
  ) {}

  async findAll(): Promise<ExampleDto[]> {
    const examples = await this.exampleRepository.find();
    return examples.map((e) => ExampleDto.from(e));
  }
}

// DTO
export class CreateExampleDto {
  @IsString()
  @IsNotEmpty()
  name: string;

  @IsOptional()
  @IsString()
  description?: string;
}
```

#### Express + TypeScript

```typescript
import { Router, Request, Response } from 'express';

const router = Router();

router.get('/examples', async (req: Request, res: Response) => {
  const examples = await exampleService.findAll();
  res.json(examples);
});

export default router;
```

### 4단계: 테스트

```typescript
describe('ExampleService', () => {
  let service: ExampleService;

  beforeEach(async () => {
    const module = await Test.createTestingModule({
      providers: [ExampleService],
    }).compile();

    service = module.get<ExampleService>(ExampleService);
  });

  it('should return all examples', async () => {
    const result = await service.findAll();
    expect(result).toBeDefined();
  });
});
```

---

## TypeScript 컨벤션

### 타입 정의
```typescript
interface User {
  id: number;
  name: string;
  email?: string;
}

type UserRole = 'admin' | 'user' | 'guest';
```

### 에러 처리
```typescript
throw new HttpException('Not found', HttpStatus.NOT_FOUND);
```

---

## 트리거 키워드

node, nodejs, typescript, ts, nestjs, express, fastify, prisma
