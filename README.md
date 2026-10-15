# thinking-lab

> 계산을 통해 사고방식을 확장하는 평생 학습 실험실

이 프로젝트는 취업 준비용 커리큘럼이나 완성된 데모 모음이 아닙니다. **발견 → 훈련 → 실험 → 새로운 문제로의 전이(transfer) → 일정 시간이 지난 뒤의 인출 연습**을 통해 오래 남는 사고 도구를 기르는 것이 목적입니다.

## 학습 원칙

1. **완료보다 깊이:** 예제 실행만으로 끝내지 않고 낯선 문제에 적용할 수 있을 때까지 공부합니다.
2. **해설보다 직접 풀이:** 문제·제약·테스트와 힌트·해설을 분리합니다.
3. **가정을 의심하기:** 실행 전 예상, 관찰 결과, 생각이 바뀐 지점을 기록합니다.
4. **독립 학습:** 강의 영상 없이도 각 실습을 진행할 수 있도록 설명합니다.
5. **다시 돌아오기:** 며칠 또는 몇 주 후 자료를 보지 않고 다시 풉니다.
6. **호기심 따라가기:** 이후 컴파일러, 운영체제, 수학, 논리학, 물리학 등으로 확장할 수 있습니다.

## 언어 원칙

**한국어 설명 + 영어 핵심 용어 병기**를 기본으로 합니다. 코드·함수 이름은 영어로 유지하고, SICP 원서의 장·절·문제 번호를 명시합니다. 영어 학습이 개념 이해를 방해하지 않도록 하기 위한 선택이며, 추후 변경할 수 있습니다.

## 첫 번째 학습 트랙: SICP (제2판)

- [01 — 프로시저와 계산 과정](sicp/01-procedures/README.md): 치환 모델, 재귀적 과정과 반복적 과정, 성장 차수, 고차 함수
- 02 — 데이터 추상화(Data Abstraction): 예정
- 03 — 상태·환경·스트림(State, Environments, Streams): 예정
- 04 — 메타언어적 추상화(Metalinguistic Abstraction): 예정
- 05 — 레지스터 기계와 컴파일(Computing with Register Machines): 예정

SICP 원서의 예제를 직접 고민하고 구현하는 경험이 실습 개수보다 중요합니다.

## 첫 학습 경로

원서 없이도 진행할 수 있도록 **[SICP 1장 학습 안내판](sicp/01-procedures/README.md)**에서 순서대로 연결합니다.

**개념 교재 → 연습 워크북 → 실행 실습 → 회고·복습**의 경로로 진행합니다. SICP 원서는 선택 참고 자료입니다.

## 시작하기

[Racket](https://racket-lang.org/)을 설치하고 아래 명령어로 실행합니다.

```bash
racket sicp/01-procedures/examples/processes.rkt
racket sicp/01-procedures/exercises/ex01-factorial.rkt
raco test sicp/01-procedures/exercises/ex01-factorial.rkt
```

초기 예제는 설치 편의성을 위해 `#lang racket`을 사용합니다. SICP의 Scheme과 동작이 다를 수 있는 부분은 실습에서 별도로 설명하며, 필요하면 `#lang sicp` 또는 별도의 Scheme 실행 환경을 도입할 수 있습니다.

## 한 실습의 학습 순서

1. **예측(Predict):** 코드를 실행하기 전에 결과를 예상합니다.
2. **구현(Implement):** 정답 코드 없이 직접 풉니다.
3. **실험(Experiment):** 전제나 조건을 바꿉니다.
4. **전이(Transfer):** 새로운 문제에 같은 원리를 적용합니다.
5. **회고(Reflect):** 자신의 말로 설명하고 일정 시간이 지난 뒤 재도전합니다.

[회고 템플릿](templates/reflection.md)을 활용하세요. 진짜 결과물은 완료한 파일 개수가 아니라 달라진 사고방식에 대한 기록입니다.

## 참고 자료

- Abelson, Sussman & Sussman, *Structure and Interpretation of Computer Programs*, 제2판
- [SICP 온라인 원문](https://sarabander.github.io/sicp/)
- [MIT Press 출판사 페이지](https://mitpress.mit.edu/9780262510875/structure-and-interpretation-of-computer-programs/)

이 저장소는 독립적으로 읽고 풀 수 있는 교재와 자체 제작 문제를 제공합니다. 원서의 문제 번호는 선택적인 심화 참고로만 연결하며, 원서가 없어도 필수 학습 과정을 완료할 수 있습니다.
