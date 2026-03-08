# ☕ Java - CS 문제은행

> 총 100문제 | Level 1~4

---

## Level 1 - 기초 (1~2년차) | 25문제

---

### Q1. JVM, JRE, JDK의 차이점은?

#### A. 핵심 요약
JDK는 개발도구, JRE는 실행환경, JVM은 바이트코드 실행 엔진입니다.

#### 상세 설명
- **JDK (Java Development Kit)**: 컴파일러(javac), 디버거 등 개발 도구 포함
- **JRE (Java Runtime Environment)**: JVM + 표준 라이브러리, 실행만 가능
- **JVM (Java Virtual Machine)**: 바이트코드를 OS별 기계어로 변환 실행

#### 실무 예시
- 개발 서버: JDK 설치
- 운영 서버: JRE만 설치 (보안상 권장)
- 컨테이너: slim 이미지는 JRE 기반

#### 면접 답변 예시
**1분**: "JDK는 개발도구 포함, JRE는 실행환경, JVM은 바이트코드 실행 엔진입니다."

**3분**: "JVM은 Write Once Run Anywhere를 실현하는 핵심으로, 바이트코드를 각 OS에 맞게 실행합니다. JRE는 JVM과 표준 라이브러리를 포함하고, JDK는 여기에 컴파일러와 개발도구를 추가한 것입니다."

#### 꼬리 질문
- JIT 컴파일러란?
- 바이트코드와 기계어의 차이는?

---

### Q2. Java의 기본 자료형(Primitive Type) 8가지는?

#### A. 핵심 요약
byte, short, int, long, float, double, char, boolean 8가지입니다.

#### 상세 설명
- **정수형**: byte(1), short(2), int(4), long(8) 바이트
- **실수형**: float(4), double(8) 바이트
- **문자형**: char(2) 바이트, 유니코드
- **논리형**: boolean(1) 바이트

#### 실무 예시
- 금액 계산: BigDecimal 사용 (float/double 오차)
- ID: long 타입 권장
- 플래그: boolean

#### 면접 답변 예시
**1분**: "byte, short, int, long, float, double, char, boolean 8가지이며, 스택에 직접 값이 저장됩니다."

**3분**: "기본형은 스택에 값 자체가 저장되어 빠르고, 참조형은 힙에 객체가 저장됩니다. int는 4바이트로 약 21억까지, long은 8바이트입니다. 실수는 부동소수점 오차가 있어 금융에선 BigDecimal을 씁니다."

#### 꼬리 질문
- Wrapper 클래스란?
- 오토박싱/언박싱이란?

---

### Q3. 객체지향 프로그래밍(OOP)의 4대 특성은?

#### A. 핵심 요약
캡슐화, 상속, 다형성, 추상화입니다.

#### 상세 설명
- **캡슐화**: 데이터와 메서드를 하나로 묶고 접근 제어
- **상속**: 부모 클래스의 속성과 메서드를 자식이 물려받음
- **다형성**: 같은 인터페이스로 다른 구현 호출
- **추상화**: 공통 특성을 추출하여 일반화

#### 실무 예시
- 캡슐화: private 필드 + getter/setter
- 상속: BaseEntity → User, Product
- 다형성: PaymentService → CardPayment, NaverPay

#### 면접 답변 예시
**1분**: "캡슐화, 상속, 다형성, 추상화이며, 코드 재사용과 유지보수를 용이하게 합니다."

**3분**: "캡슐화는 정보 은닉으로 결합도를 낮추고, 상속은 코드 재사용을, 다형성은 유연한 설계를, 추상화는 복잡성 감소를 제공합니다. 실무에서는 인터페이스 기반 설계로 다형성을 적극 활용합니다."

#### 꼬리 질문
- 상속보다 컴포지션을 권장하는 이유는?
- SOLID 원칙이란?

---

### Q4. 클래스와 객체의 차이는?

#### A. 핵심 요약
클래스는 설계도, 객체는 그 설계도로 만든 실체입니다.

#### 상세 설명
- **클래스**: 속성(필드)과 행위(메서드)를 정의한 템플릿
- **객체**: 클래스를 기반으로 메모리에 생성된 인스턴스
- **인스턴스화**: new 키워드로 객체 생성

#### 실무 예시
- 클래스: User.java 파일
- 객체: new User("홍길동") 로 생성된 인스턴스

#### 면접 답변 예시
**1분**: "클래스는 객체의 설계도이고, 객체는 그 설계도로 힙 메모리에 생성된 실체입니다."

**3분**: "클래스는 컴파일 타임에 정의되고, 객체는 런타임에 new로 생성됩니다. 하나의 클래스로 여러 객체를 만들 수 있으며, 각 객체는 독립적인 상태를 가집니다."

#### 꼬리 질문
- 인스턴스와 객체의 차이는?
- static 멤버는 어디에 저장되나요?

---

### Q5. 접근 제어자 4가지와 범위는?

#### A. 핵심 요약
public(모든 곳), protected(상속+같은 패키지), default(같은 패키지), private(같은 클래스)입니다.

#### 상세 설명
- **public**: 모든 클래스에서 접근 가능
- **protected**: 같은 패키지 + 상속받은 클래스
- **default**: 같은 패키지 내에서만 (키워드 없음)
- **private**: 해당 클래스 내에서만

#### 실무 예시
- API 메서드: public
- 내부 헬퍼 메서드: private
- 상속용 메서드: protected

#### 면접 답변 예시
**1분**: "public > protected > default > private 순으로 접근 범위가 좁아지며, 캡슐화를 위해 최소 권한 원칙을 적용합니다."

**3분**: "private으로 내부 구현을 숨기고 public 메서드로 인터페이스를 노출하는 것이 좋은 설계입니다. protected는 상속 시 확장점으로 사용하고, default는 패키지 단위 모듈화에 활용됩니다."

#### 꼬리 질문
- 클래스에 적용 가능한 접근 제어자는?
- final 키워드와의 조합은?

---

### Q6. static 키워드의 의미와 용도는?

#### A. 핵심 요약
클래스 레벨에서 공유되는 멤버로, 객체 생성 없이 사용 가능합니다.

#### 상세 설명
- **static 변수**: 모든 인스턴스가 공유, 메서드 영역에 저장
- **static 메서드**: 인스턴스 변수 접근 불가, 유틸리티 메서드에 사용
- **static 블록**: 클래스 로딩 시 한 번 실행

#### 실무 예시
- 상수: public static final
- 유틸리티: StringUtils.isEmpty()
- 싱글톤: private static instance

#### 면접 답변 예시
**1분**: "static은 클래스 레벨 멤버로, 인스턴스 생성 없이 접근 가능하며 모든 객체가 공유합니다."

**3분**: "static 변수는 메서드 영역에 저장되어 GC 대상이 아닙니다. static 메서드는 this 참조가 없어 인스턴스 멤버에 접근 불가합니다. 과도한 static 사용은 메모리 누수와 테스트 어려움을 야기합니다."

#### 꼬리 질문
- static 메서드를 오버라이딩할 수 있나요?
- 메모리 누수가 발생하는 경우는?

---

### Q7. final 키워드의 용도는?

#### A. 핵심 요약
변수는 재할당 금지, 메서드는 오버라이딩 금지, 클래스는 상속 금지입니다.

#### 상세 설명
- **final 변수**: 한 번 초기화 후 변경 불가
- **final 메서드**: 자식 클래스에서 오버라이딩 불가
- **final 클래스**: 상속 불가 (예: String, Integer)

#### 실무 예시
- 상수 정의: public static final int MAX = 100;
- 불변 객체: final 필드 + private setter 없음
- 보안: String이 final인 이유

#### 면접 답변 예시
**1분**: "final은 변경을 막는 키워드로, 변수/메서드/클래스에 적용하여 불변성을 보장합니다."

**3분**: "final 변수는 스레드 안전성에 도움을 주고, final 클래스는 String처럼 보안이 중요한 경우 사용합니다. effectively final은 람다에서 사실상 final인 지역변수를 참조할 수 있게 합니다."

#### 꼬리 질문
- final 객체의 내부 상태도 불변인가요?
- effectively final이란?

---

### Q8. String이 불변(Immutable)인 이유는?

#### A. 핵심 요약
보안, 스레드 안전성, 해시값 캐싱, String Pool 활용을 위해서입니다.

#### 상세 설명
- **보안**: 네트워크 연결, 파일 경로 등에서 변조 방지
- **스레드 안전**: 동기화 없이 공유 가능
- **해시 캐싱**: hashCode를 캐싱하여 HashMap 성능 향상
- **String Pool**: 리터럴 재사용으로 메모리 절약

#### 실무 예시
- String Pool: "hello" 리터럴은 같은 객체 참조
- StringBuilder: 문자열 조작 시 사용
- 비밀번호: char[] 사용 권장 (메모리에서 즉시 삭제 가능)

#### 면접 답변 예시
**1분**: "String은 보안, 스레드 안전성, 해시 캐싱, String Pool 활용을 위해 불변입니다."

**3분**: "불변 String은 HashMap 키로 안전하게 사용 가능하고, 여러 스레드가 동기화 없이 공유할 수 있습니다. 문자열 조작이 많으면 StringBuilder를 사용하고, 보안 데이터는 char[]로 처리 후 명시적으로 지웁니다."

#### 꼬리 질문
- String vs StringBuilder vs StringBuffer 차이는?
- String Pool은 어디에 위치하나요?

---

### Q9. equals()와 hashCode()의 관계는?

#### A. 핵심 요약
equals()가 true면 hashCode()도 같아야 합니다 (역은 성립 안 함).

#### 상세 설명
- **equals()**: 논리적 동등성 비교
- **hashCode()**: 해시 기반 컬렉션에서 버킷 결정
- **계약**: equals가 같으면 hashCode도 같아야 함
- **둘 다 재정의**: 하나만 재정의하면 HashSet, HashMap에서 오류

#### 실무 예시
- Entity: id 기반 equals/hashCode
- VO: 모든 필드 기반
- Lombok: @EqualsAndHashCode 사용

#### 면접 답변 예시
**1분**: "equals()가 true인 두 객체는 반드시 같은 hashCode()를 반환해야 합니다. 그래야 HashMap 등에서 정상 동작합니다."

**3분**: "hashCode가 다르면 HashMap에서 다른 버킷에 저장되어 equals 비교 자체가 안 됩니다. 따라서 equals를 재정의하면 hashCode도 같은 필드로 재정의해야 합니다. IDE나 Lombok으로 생성하는 것이 안전합니다."

#### 꼬리 질문
- == 와 equals()의 차이는?
- hashCode 충돌이 발생하면?

---

### Q10. 오버로딩과 오버라이딩의 차이는?

#### A. 핵심 요약
오버로딩은 같은 이름 다른 매개변수, 오버라이딩은 상속받은 메서드 재정의입니다.

#### 상세 설명
- **오버로딩**: 컴파일 타임 다형성, 매개변수 타입/개수 다름
- **오버라이딩**: 런타임 다형성, 시그니처 동일, @Override 권장
- **리턴타입**: 오버로딩은 무관, 오버라이딩은 공변 리턴 허용

#### 실무 예시
- 오버로딩: println(int), println(String)
- 오버라이딩: toString(), equals()

#### 면접 답변 예시
**1분**: "오버로딩은 같은 이름 다른 파라미터로 컴파일 타임에 결정되고, 오버라이딩은 부모 메서드를 재정의하여 런타임에 결정됩니다."

**3분**: "오버로딩은 메서드 시그니처(이름+파라미터)가 달라야 하고, 오버라이딩은 시그니처가 같아야 합니다. 오버라이딩 시 접근 제어자는 확장만 가능하고, 예외는 축소만 가능합니다. @Override 어노테이션으로 컴파일러 검증을 받는 것이 좋습니다."

#### 꼬리 질문
- 리턴 타입만 다르면 오버로딩인가요?
- 부모의 private 메서드를 오버라이딩할 수 있나요?

---

### Q11. 추상 클래스와 인터페이스의 차이는?

#### A. 핵심 요약
추상 클래스는 상태와 구현을 가질 수 있고, 인터페이스는 계약만 정의합니다 (Java 8 이후 default 메서드 가능).

#### 상세 설명
- **추상 클래스**: 단일 상속, 생성자/필드/일반 메서드 가능
- **인터페이스**: 다중 구현, public abstract 메서드, Java 8부터 default/static 메서드
- **선택 기준**: IS-A 관계면 추상 클래스, 기능 명세면 인터페이스

#### 실무 예시
- 추상 클래스: AbstractController (공통 로직)
- 인터페이스: PaymentGateway (다양한 PG사 구현)

#### 면접 답변 예시
**1분**: "추상 클래스는 상태와 구현을 포함한 부분 구현체이고, 인터페이스는 구현체가 따라야 할 계약입니다."

**3분**: "Java 8 이후 인터페이스도 default 메서드로 구현을 가질 수 있지만, 상태(인스턴스 필드)는 여전히 불가합니다. 추상 클래스는 공통 상태와 템플릿 메서드 패턴에, 인터페이스는 다중 역할 부여와 느슨한 결합에 적합합니다."

#### 꼬리 질문
- Java 8의 default 메서드란?
- 다이아몬드 문제란?

---

### Q12. 인터페이스의 default 메서드란? (Java 8+)

#### A. 핵심 요약
인터페이스에 기본 구현을 제공하여 하위 호환성을 유지하는 메서드입니다.

#### 상세 설명
- **도입 배경**: 기존 인터페이스에 메서드 추가 시 모든 구현체 수정 필요 → default로 해결
- **사용법**: default 키워드로 메서드 본문 작성
- **우선순위**: 클래스 > 인터페이스, 구체적인 인터페이스 > 상위 인터페이스

#### 실무 예시
- Collection.forEach(), List.sort()
- 공통 유틸리티 로직 제공

#### 면접 답변 예시
**1분**: "default 메서드는 인터페이스에 기본 구현을 제공하여 기존 구현체를 깨지 않고 메서드를 추가할 수 있게 합니다."

**3분**: "Java 8에서 람다와 스트림 API 도입 시 Iterable, Collection에 forEach 같은 메서드를 추가해야 했고, default 메서드로 하위 호환성을 유지했습니다. 다중 상속 충돌 시 구현 클래스에서 명시적으로 선택해야 합니다."

#### 꼬리 질문
- static 메서드도 인터페이스에 가능한가요?
- private 메서드는? (Java 9+)

---

### Q13. 생성자란 무엇이며 특징은?

#### A. 핵심 요약
객체 초기화를 위한 특수 메서드로, 클래스명과 동일하고 반환타입이 없습니다.

#### 상세 설명
- **기본 생성자**: 매개변수 없는 생성자, 명시하지 않으면 컴파일러가 자동 생성
- **매개변수 생성자**: 필드 초기화용
- **this()**: 같은 클래스 다른 생성자 호출
- **super()**: 부모 생성자 호출 (첫 줄에 위치)

#### 실무 예시
- 빌더 패턴: private 생성자 + static Builder
- DI: 생성자 주입 권장

#### 면접 답변 예시
**1분**: "생성자는 객체 생성 시 초기화를 담당하며, 클래스명과 동일하고 반환타입이 없습니다."

**3분**: "생성자가 하나라도 있으면 기본 생성자는 자동 생성되지 않습니다. 상속 시 super()가 암묵적으로 호출되므로 부모에 기본 생성자가 없으면 명시적 호출이 필요합니다. Spring에서는 생성자 주입으로 불변성과 테스트 용이성을 확보합니다."

#### 꼬리 질문
- 생성자에서 this()와 super()를 동시에 쓸 수 있나요?
- 생성자 주입이 권장되는 이유는?

---

### Q14. this와 super 키워드의 차이는?

#### A. 핵심 요약
this는 현재 객체 참조, super는 부모 클래스 참조입니다.

#### 상세 설명
- **this**: 현재 인스턴스 참조, this()로 다른 생성자 호출
- **super**: 부모 클래스 멤버 접근, super()로 부모 생성자 호출
- **사용 시점**: 필드와 매개변수 이름 충돌 시, 부모 메서드 호출 시

#### 실무 예시
- this.name = name; (생성자에서 필드 초기화)
- super.save(); (부모 로직 실행 후 추가 로직)

#### 면접 답변 예시
**1분**: "this는 현재 객체를, super는 부모 클래스를 참조합니다. 생성자에서 this()나 super()는 첫 줄에만 올 수 있습니다."

**3분**: "this는 메서드 체이닝, 빌더 패턴에서 자신을 반환할 때 사용합니다. super는 오버라이딩된 메서드에서 부모 로직을 재사용할 때 유용합니다. static 컨텍스트에서는 둘 다 사용 불가합니다."

#### 꼬리 질문
- static 메서드에서 this를 쓸 수 있나요?
- super.super는 가능한가요?

---

### Q15. Wrapper 클래스와 오토박싱이란?

#### A. 핵심 요약
기본형을 객체로 감싼 클래스이며, 오토박싱은 자동 변환 기능입니다.

#### 상세 설명
- **Wrapper 클래스**: Integer, Long, Double 등 기본형의 객체 버전
- **오토박싱**: 기본형 → Wrapper 자동 변환
- **언박싱**: Wrapper → 기본형 자동 변환
- **주의점**: null 언박싱 시 NPE, == 비교 시 캐시 범위 주의

#### 실무 예시
- 컬렉션: List<Integer> (기본형 불가)
- null 허용: Integer age (나이 미입력 가능)

#### 면접 답변 예시
**1분**: "Wrapper 클래스는 기본형을 객체로 감싸며, 오토박싱으로 자동 변환됩니다. 컬렉션에서 필수입니다."

**3분**: "Integer는 -128~127을 캐싱하므로 이 범위에서 ==가 true일 수 있지만, 범위 밖은 false입니다. 따라서 equals()로 비교해야 합니다. null 가능성이 있으면 언박싱 전 null 체크가 필요합니다."

#### 꼬리 질문
- Integer.valueOf(127) == Integer.valueOf(127)의 결과는?
- 성능상 기본형과 Wrapper의 차이는?

---

### Q16. 제네릭(Generic)이란?

#### A. 핵심 요약
컴파일 타임에 타입을 체크하여 타입 안전성을 보장하는 기능입니다.

#### 상세 설명
- **타입 파라미터**: <T>, <E>, <K, V> 등으로 표현
- **타입 소거**: 컴파일 후 제네릭 정보 제거 (하위 호환성)
- **장점**: 컴파일 타임 타입 체크, 형변환 제거

#### 실무 예시
- List<User> users = new ArrayList<>();
- Map<String, Object> map

#### 면접 답변 예시
**1분**: "제네릭은 컴파일 타임에 타입을 검사하여 런타임 ClassCastException을 방지합니다."

**3분**: "제네릭 이전에는 Object로 저장하고 캐스팅했지만, 제네릭으로 타입 안전성을 확보합니다. 타입 소거로 런타임에는 타입 정보가 없어 new T()나 instanceof T는 불가합니다."

#### 꼬리 질문
- 타입 소거(Type Erasure)란?
- 와일드카드 <?>의 용도는?

---

### Q17. 예외(Exception)와 에러(Error)의 차이는?

#### A. 핵심 요약
Exception은 복구 가능한 예외, Error는 복구 불가능한 시스템 오류입니다.

#### 상세 설명
- **Throwable**: Exception과 Error의 부모
- **Exception**: 프로그램에서 처리 가능 (IOException, SQLException)
- **Error**: JVM 레벨 오류 (OutOfMemoryError, StackOverflowError)
- **RuntimeException**: Unchecked Exception

#### 실무 예시
- Exception: try-catch로 처리
- Error: 애플리케이션에서 catch 하지 않음

#### 면접 답변 예시
**1분**: "Exception은 애플리케이션에서 처리 가능한 예외이고, Error는 JVM 레벨의 복구 불가능한 오류입니다."

**3분**: "Checked Exception은 컴파일러가 처리를 강제하고, Unchecked Exception(RuntimeException)은 선택적입니다. Error는 catch 하더라도 정상 복구가 어려우므로 로깅 후 종료하는 것이 일반적입니다."

#### 꼬리 질문
- Checked와 Unchecked Exception의 차이는?
- 언제 RuntimeException을 사용하나요?

---

### Q18. Checked Exception과 Unchecked Exception의 차이는?

#### A. 핵심 요약
Checked는 컴파일러가 처리 강제, Unchecked는 런타임 예외로 선택적 처리입니다.

#### 상세 설명
- **Checked**: Exception 직접 상속, 반드시 try-catch 또는 throws
- **Unchecked**: RuntimeException 상속, 처리 선택적
- **설계 논쟁**: Checked는 강제로 인한 코드 오염 vs 명시적 계약

#### 실무 예시
- Checked: IOException, SQLException
- Unchecked: NullPointerException, IllegalArgumentException

#### 면접 답변 예시
**1분**: "Checked Exception은 컴파일 타임에 처리를 강제하고, Unchecked는 런타임 예외로 선택적입니다."

**3분**: "최근 트렌드는 Unchecked Exception 선호입니다. Spring은 대부분 Unchecked로 변환하며, 호출자가 복구할 수 없는 예외는 Unchecked가 적합합니다. 비즈니스 예외도 RuntimeException을 상속하는 것이 일반적입니다."

#### 꼬리 질문
- Spring이 Checked를 Unchecked로 변환하는 이유는?
- 커스텀 예외 설계 시 고려사항은?

---

### Q19. try-with-resources란? (Java 7+)

#### A. 핵심 요약
AutoCloseable 리소스를 자동으로 닫아주는 구문입니다.

#### 상세 설명
- **AutoCloseable**: close() 메서드를 가진 인터페이스
- **자동 종료**: try 블록 종료 시 자동 close() 호출
- **역순 종료**: 선언 역순으로 리소스 종료
- **Suppressed Exception**: 여러 예외 발생 시 suppressed로 보존

#### 실무 예시
```java
try (FileInputStream fis = new FileInputStream("file.txt")) {
    // 사용
} // 자동으로 fis.close() 호출
```

#### 면접 답변 예시
**1분**: "try-with-resources는 AutoCloseable 리소스를 자동으로 닫아 리소스 누수를 방지합니다."

**3분**: "기존 try-finally 방식은 close()에서 예외 발생 시 원본 예외가 숨겨졌지만, try-with-resources는 suppressed exception으로 보존합니다. Java 9부터는 effectively final 변수도 사용 가능합니다."

#### 꼬리 질문
- Suppressed Exception이란?
- Closeable과 AutoCloseable의 차이는?

---

### Q20. 자바 메모리 구조 (Runtime Data Area)는?

#### A. 핵심 요약
Method Area, Heap, Stack, PC Register, Native Method Stack으로 구성됩니다.

#### 상세 설명
- **Method Area**: 클래스 정보, static 변수, 상수 풀
- **Heap**: 객체, 배열 저장 (GC 대상)
- **Stack**: 메서드 호출 시 프레임 생성, 지역변수
- **PC Register**: 현재 실행 명령어 주소
- **Native Method Stack**: 네이티브 메서드 호출

#### 실무 예시
- 힙 사이즈 조정: -Xms, -Xmx
- 스택 오버플로우: 재귀 깊이 초과

#### 면접 답변 예시
**1분**: "JVM 메모리는 Method Area, Heap, Stack 등으로 구성되며, 객체는 Heap에, 지역변수는 Stack에 저장됩니다."

**3분**: "Heap은 모든 스레드가 공유하고 GC가 관리합니다. Stack은 스레드별로 독립적이며 LIFO 구조입니다. Method Area도 공유 영역으로 클래스 메타데이터가 저장됩니다. Java 8부터 PermGen이 Metaspace로 변경되었습니다."

#### 꼬리 질문
- PermGen과 Metaspace의 차이는?
- 각 영역에서 발생하는 OOM은?

---

### Q21. 가비지 컬렉션(GC)이란?

#### A. 핵심 요약
더 이상 참조되지 않는 객체를 자동으로 메모리에서 해제하는 기능입니다.

#### 상세 설명
- **도달 가능성**: Root에서 참조 체인으로 연결되면 살아있음
- **Mark & Sweep**: 살아있는 객체 표시 후 나머지 제거
- **세대별 GC**: Young/Old Generation 분리
- **STW (Stop The World)**: GC 중 애플리케이션 일시 정지

#### 실무 예시
- Minor GC: Young 영역, 빈번하고 빠름
- Major/Full GC: Old 영역, 느리고 STW 길음

#### 면접 답변 예시
**1분**: "GC는 Heap에서 참조되지 않는 객체를 자동 해제합니다. 개발자가 메모리 해제를 신경 쓸 필요가 없습니다."

**3분**: "대부분 객체는 금방 죽는다는 가설에 따라 Young/Old로 나눕니다. Young에서 살아남은 객체가 Old로 승격됩니다. STW를 줄이기 위해 G1, ZGC 등 다양한 수집기가 발전했습니다."

#### 꼬리 질문
- Minor GC와 Major GC의 차이는?
- System.gc()를 호출하면?

---

### Q22. 상속(Inheritance)이란?

#### A. 핵심 요약
부모 클래스의 속성과 메서드를 자식 클래스가 물려받는 것입니다.

#### 상세 설명
- **extends**: 클래스 상속 (단일 상속)
- **implements**: 인터페이스 구현 (다중 구현)
- **IS-A 관계**: "자식은 부모이다"가 성립해야 함
- **상속 vs 조합**: 조합이 더 유연

#### 실무 예시
- BaseEntity → User, Product
- 템플릿 메서드 패턴

#### 면접 답변 예시
**1분**: "상속은 코드 재사용과 다형성을 위해 부모의 멤버를 자식이 물려받는 것입니다. Java는 단일 상속만 지원합니다."

**3분**: "상속은 강한 결합을 만들어 부모 변경이 자식에 영향을 줍니다. 따라서 '상속보다 조합'이 권장됩니다. 상속은 IS-A 관계가 명확하고 확장을 위한 설계일 때만 사용합니다."

#### 꼬리 질문
- 상속보다 조합을 권장하는 이유는?
- 다중 상속이 안 되는 이유는?

---

### Q23. 다형성(Polymorphism)이란?

#### A. 핵심 요약
같은 타입으로 다양한 객체를 다룰 수 있는 능력입니다.

#### 상세 설명
- **컴파일타임 다형성**: 오버로딩
- **런타임 다형성**: 오버라이딩 (동적 바인딩)
- **업캐스팅**: 자식 → 부모 타입 (자동)
- **다운캐스팅**: 부모 → 자식 타입 (명시적)

#### 실무 예시
- List<User> list = new ArrayList<>();
- 전략 패턴, 팩토리 패턴

#### 면접 답변 예시
**1분**: "다형성은 부모 타입 참조로 다양한 자식 객체를 다루며, 런타임에 실제 객체의 메서드가 호출됩니다."

**3분**: "다형성으로 OCP(개방-폐쇄 원칙)를 실현합니다. 새로운 구현체를 추가해도 기존 코드 변경 없이 확장 가능합니다. 인터페이스 기반 설계가 다형성 활용의 핵심입니다."

#### 꼬리 질문
- 동적 바인딩이란?
- instanceof를 자주 쓰면 문제가 될까요?

---

### Q24. 캡슐화(Encapsulation)란?

#### A. 핵심 요약
데이터와 메서드를 하나로 묶고, 외부에 필요한 것만 공개하는 것입니다.

#### 상세 설명
- **정보 은닉**: private으로 내부 구현 숨김
- **접근 메서드**: getter/setter로 제어된 접근
- **장점**: 결합도 감소, 유지보수성 향상

#### 실무 예시
- 필드 private + getter/setter
- 불변 객체: setter 없이 생성자로만 초기화

#### 면접 답변 예시
**1분**: "캡슐화는 내부 구현을 숨기고 인터페이스만 공개하여 결합도를 낮춥니다."

**3분**: "캡슐화는 단순히 private + getter/setter가 아닙니다. 의미 있는 메서드로 행위를 노출해야 합니다. 예를 들어 setBalance() 대신 deposit(), withdraw() 같은 비즈니스 메서드를 제공합니다."

#### 꼬리 질문
- getter/setter를 무조건 만드는 것이 좋은가요?
- 불변 객체가 캡슐화에 좋은 이유는?

---

### Q25. 추상화(Abstraction)란?

#### A. 핵심 요약
공통 특성을 추출하여 상위 개념으로 일반화하는 것입니다.

#### 상세 설명
- **추상 클래스**: 공통 구현 + 추상 메서드
- **인터페이스**: 순수 계약 정의
- **목적**: 복잡성 감소, 핵심에 집중

#### 실무 예시
- Animal (추상) → Dog, Cat (구체)
- Repository 인터페이스

#### 면접 답변 예시
**1분**: "추상화는 공통점을 뽑아내어 상위 개념을 만들고, 구체적인 것은 숨기는 것입니다."

**3분**: "좋은 추상화는 핵심 개념만 노출하고 세부 구현을 숨깁니다. 인터페이스로 '무엇을' 정의하고, 구현체에서 '어떻게'를 결정합니다. 추상화 수준이 맞아야 확장성과 유지보수성이 좋아집니다."

#### 꼬리 질문
- 추상화와 캡슐화의 차이는?
- 과도한 추상화의 문제점은?

---

## Level 2 - 중급 (3~4년차) | 30문제

---

### Q26. ArrayList와 LinkedList의 차이는?

#### A. 핵심 요약
ArrayList는 배열 기반으로 조회 O(1), LinkedList는 노드 기반으로 삽입/삭제 O(1)입니다.

#### 상세 설명
- **ArrayList**: 내부 배열, 인덱스 접근 빠름, 중간 삽입 시 복사 발생
- **LinkedList**: 이중 연결 리스트, 순차 접근 느림, 삽입/삭제 빠름
- **메모리**: ArrayList가 더 효율적 (노드 오버헤드 없음)

#### 실무 예시
- 조회 위주: ArrayList 사용
- 큐 구현: LinkedList 활용 (offer/poll)

#### 면접 답변 예시
**1분**: "ArrayList는 배열 기반으로 랜덤 접근이 빠르고, LinkedList는 노드 기반으로 삽입/삭제가 빠릅니다."

**3분**: "대부분의 경우 ArrayList가 성능이 좋습니다. LinkedList는 요소 접근 시 O(n)이고, 캐시 지역성도 나쁩니다. 중간 삽입이 빈번해도 ArrayList의 System.arraycopy가 최적화되어 있어 실제로 더 빠른 경우가 많습니다."

#### 꼬리 질문
- ArrayList의 초기 용량은?
- 중간 삽입이 많아도 ArrayList가 빠른 이유는?

---

### Q27. HashMap의 동작 원리는?

#### A. 핵심 요약
해시 함수로 버킷을 결정하고, 충돌 시 연결 리스트 또는 트리로 저장합니다.

#### 상세 설명
- **해시 계산**: key.hashCode() → 보조 해시 → 버킷 인덱스
- **충돌 해결**: Separate Chaining (연결 리스트 → 8개 이상 시 트리)
- **리사이징**: load factor 0.75 초과 시 2배 확장

#### 실무 예시
- 캐시 구현
- 빈도 카운팅

#### 면접 답변 예시
**1분**: "HashMap은 키의 hashCode로 버킷을 결정하고, 충돌 시 체이닝으로 해결합니다. Java 8부터 8개 이상은 트리로 변환됩니다."

**3분**: "equals와 hashCode 계약이 중요합니다. equals가 같으면 hashCode도 같아야 같은 버킷에서 찾을 수 있습니다. 트리 변환은 최악 O(n)을 O(log n)으로 개선합니다. 초기 용량 설정으로 리사이징 비용을 줄일 수 있습니다."

#### 꼬리 질문
- 왜 8개 이상일 때 트리로 변환하나요?
- hashCode가 같은데 equals가 다르면?

---

### Q28. ConcurrentHashMap vs HashMap vs Hashtable 차이는?

#### A. 핵심 요약
HashMap은 비동기, Hashtable은 전체 락, ConcurrentHashMap은 세분화된 락으로 동시성 지원합니다.

#### 상세 설명
- **HashMap**: 동기화 없음, 단일 스레드에서 가장 빠름
- **Hashtable**: 모든 메서드 synchronized, 성능 나쁨 (deprecated)
- **ConcurrentHashMap**: 버킷 레벨 락, 읽기는 락 없음, 높은 동시성

#### 실무 예시
- 멀티스레드 환경: ConcurrentHashMap
- 단일 스레드: HashMap

#### 면접 답변 예시
**1분**: "ConcurrentHashMap은 세분화된 락으로 높은 동시성을 제공하며, Hashtable은 전체 락으로 성능이 나쁩니다."

**3분**: "Java 8 ConcurrentHashMap은 CAS와 synchronized 블록을 조합합니다. 읽기는 volatile로 락 없이, 쓰기는 버킷 노드 락으로 동시성을 높입니다. size()는 근사치를 반환하고, 정확한 크기가 필요하면 mappingCount()를 사용합니다."

#### 꼬리 질문
- Collections.synchronizedMap과의 차이는?
- ConcurrentHashMap에서 null을 허용하지 않는 이유는?

---

### Q29. 스트림(Stream) API란? (Java 8+)

#### A. 핵심 요약
컬렉션 데이터를 선언적으로 처리하는 함수형 API입니다.

#### 상세 설명
- **특징**: 지연 연산, 병렬 처리 용이, 원본 불변
- **중간 연산**: filter, map, sorted (lazy)
- **최종 연산**: collect, forEach, reduce (trigger)
- **주의점**: 재사용 불가, 무한 스트림 주의

#### 실무 예시
```java
list.stream()
    .filter(u -> u.getAge() > 20)
    .map(User::getName)
    .collect(Collectors.toList());
```

#### 면접 답변 예시
**1분**: "Stream은 컬렉션을 함수형으로 처리하며, 지연 연산으로 효율적이고 병렬화가 쉽습니다."

**3분**: "중간 연산은 파이프라인만 구성하고, 최종 연산 시 한 번에 처리합니다. parallelStream은 ForkJoinPool을 사용하지만, 공유 풀이므로 주의가 필요합니다. 디버깅이 어려우므로 복잡한 로직은 메서드로 분리합니다."

#### 꼬리 질문
- parallelStream의 주의점은?
- findFirst와 findAny의 차이는?

---

### Q30. 람다 표현식이란? (Java 8+)

#### A. 핵심 요약
익명 함수를 간결하게 표현하는 방법으로, 함수형 인터페이스의 구현체입니다.

#### 상세 설명
- **문법**: (매개변수) -> { 본문 }
- **함수형 인터페이스**: 추상 메서드가 하나인 인터페이스
- **변수 캡처**: effectively final 변수만 참조 가능

#### 실무 예시
```java
list.sort((a, b) -> a.getName().compareTo(b.getName()));
button.addActionListener(e -> System.out.println("clicked"));
```

#### 면접 답변 예시
**1분**: "람다는 함수형 인터페이스의 익명 구현을 간결하게 작성합니다. Java 8에서 함수형 프로그래밍을 지원합니다."

**3분**: "람다는 내부적으로 invokedynamic으로 구현되어 익명 클래스보다 효율적입니다. 메서드 참조(::)로 더 간결하게 작성 가능합니다. this는 람다를 감싼 클래스를 참조하고, 익명 클래스는 자신을 참조합니다."

#### 꼬리 질문
- 메서드 참조란?
- 람다에서 외부 변수를 수정할 수 없는 이유는?

---

### Q31. Optional이란? (Java 8+)

#### A. 핵심 요약
null 대신 값의 존재 여부를 명시적으로 표현하는 래퍼 클래스입니다.

#### 상세 설명
- **생성**: Optional.of(), Optional.ofNullable(), Optional.empty()
- **추출**: get(), orElse(), orElseGet(), orElseThrow()
- **변환**: map(), flatMap(), filter()
- **주의**: 필드 타입으로 사용 금지, 컬렉션에 사용 금지

#### 실무 예시
```java
return userRepository.findById(id)
    .map(User::getEmail)
    .orElse("unknown");
```

#### 면접 답변 예시
**1분**: "Optional은 null 가능성을 타입으로 표현하여 NullPointerException을 방지합니다."

**3분**: "Optional은 반환 타입으로만 사용하는 것이 권장됩니다. 필드나 파라미터로 사용하면 직렬화 문제와 불필요한 래핑이 발생합니다. orElse는 항상 실행되므로 비용이 있다면 orElseGet을 사용합니다."

#### 꼬리 질문
- orElse와 orElseGet의 차이는?
- Optional을 필드로 쓰면 안 되는 이유는?

---

### Q32. 함수형 인터페이스란?

#### A. 핵심 요약
추상 메서드가 하나뿐인 인터페이스로, 람다 표현식의 타입입니다.

#### 상세 설명
- **@FunctionalInterface**: 컴파일러 검증용 어노테이션
- **주요 인터페이스**: Predicate, Function, Consumer, Supplier
- **default/static 메서드**: 여러 개 가능

#### 실무 예시
- Predicate<T>: boolean test(T t) - 조건 검사
- Function<T,R>: R apply(T t) - 변환
- Consumer<T>: void accept(T t) - 소비
- Supplier<T>: T get() - 공급

#### 면접 답변 예시
**1분**: "함수형 인터페이스는 추상 메서드가 하나인 인터페이스로, 람다 표현식으로 구현할 수 있습니다."

**3분**: "java.util.function에 표준 함수형 인터페이스가 정의되어 있습니다. Predicate는 필터링, Function은 변환, Consumer는 소비에 사용합니다. 기본형 특화(IntPredicate 등)로 박싱 오버헤드를 줄일 수 있습니다."

#### 꼬리 질문
- BiFunction이란?
- 기본형 특화 함수형 인터페이스의 장점은?

---

### Q33. Enum의 특징과 장점은?

#### A. 핵심 요약
타입 안전한 상수 집합으로, 싱글톤 보장 및 메서드/필드 추가가 가능합니다.

#### 상세 설명
- **타입 안전성**: 잘못된 값 컴파일 에러
- **싱글톤**: 각 상수는 단일 인스턴스
- **메서드/필드**: 상태와 행위 정의 가능
- **switch 호환**: case에서 직접 사용

#### 실무 예시
```java
public enum OrderStatus {
    PENDING, PAID, SHIPPED, DELIVERED;
}
```

#### 면접 답변 예시
**1분**: "Enum은 타입 안전한 상수로, 컴파일 타임 검증과 IDE 지원이 좋습니다."

**3분**: "Enum은 final class로 상속 불가하며, 생성자는 private입니다. values()로 모든 상수를 배열로 얻고, valueOf()로 이름으로 찾습니다. 상수별 메서드 구현(abstract method)으로 전략 패턴을 구현할 수 있습니다."

#### 꼬리 질문
- Enum으로 싱글톤을 구현하는 방법은?
- EnumSet, EnumMap의 장점은?

---

### Q34. 어노테이션(Annotation)이란?

#### A. 핵심 요약
메타데이터를 코드에 추가하는 방법으로, 컴파일러/런타임에서 활용됩니다.

#### 상세 설명
- **Retention**: SOURCE, CLASS, RUNTIME
- **Target**: TYPE, METHOD, FIELD 등
- **내장 어노테이션**: @Override, @Deprecated, @SuppressWarnings
- **커스텀 어노테이션**: @interface로 정의

#### 실무 예시
- @Controller, @Service, @Repository (Spring)
- @Test (JUnit)

#### 면접 답변 예시
**1분**: "어노테이션은 코드에 메타데이터를 추가하여 컴파일러나 프레임워크에서 활용합니다."

**3분**: "RUNTIME 보존 어노테이션은 리플렉션으로 읽어 동적 처리합니다. Spring은 어노테이션으로 설정을 간소화하고, AOP 적용 지점을 표시합니다. 어노테이션 프로세서로 컴파일 타임 코드 생성도 가능합니다 (Lombok)."

#### 꼬리 질문
- 어노테이션 프로세서란?
- @Retention의 세 가지 값의 차이는?

---

### Q35. 직렬화(Serialization)란?

#### A. 핵심 요약
객체를 바이트 스트림으로 변환하여 저장하거나 전송하는 것입니다.

#### 상세 설명
- **Serializable**: 마커 인터페이스
- **serialVersionUID**: 버전 호환성 검증
- **transient**: 직렬화 제외
- **문제점**: 보안 취약점, 버전 관리 어려움

#### 실무 예시
- 세션 저장
- 캐시 저장
- RMI 통신

#### 면접 답변 예시
**1분**: "직렬화는 객체를 바이트로 변환하여 저장/전송하며, Serializable 인터페이스를 구현합니다."

**3분**: "Java 직렬화는 보안과 유지보수 문제가 있어 JSON, Protocol Buffers 같은 대안을 권장합니다. serialVersionUID를 명시적으로 선언하여 호환성을 관리하고, transient로 민감 정보를 제외합니다."

#### 꼬리 질문
- serialVersionUID를 선언하지 않으면?
- Externalizable과의 차이는?

---

### Q36. 불변 객체(Immutable Object)란?

#### A. 핵심 요약
생성 후 상태를 변경할 수 없는 객체로, 스레드 안전하고 캐싱에 유리합니다.

#### 상세 설명
- **설계 규칙**: final 클래스, private final 필드, setter 없음
- **방어적 복사**: 가변 객체는 복사본 반환
- **장점**: 스레드 안전, side-effect 없음, HashMap 키로 안전

#### 실무 예시
- String, Integer, LocalDateTime
- DTO, VO 설계

#### 면접 답변 예시
**1분**: "불변 객체는 상태 변경이 불가하여 스레드 안전하고, 공유/캐싱에 안전합니다."

**3분**: "불변 객체는 final 클래스, private final 필드로 만듭니다. 내부에 가변 객체가 있으면 방어적 복사가 필요합니다. Java 14+ record가 불변 객체 생성을 간소화합니다."

#### 꼬리 질문
- 방어적 복사란?
- record 클래스란? (Java 14+)

---

### Q37. Comparable과 Comparator의 차이는?

#### A. 핵심 요약
Comparable은 자연 순서 정의, Comparator는 외부에서 정렬 기준 정의입니다.

#### 상세 설명
- **Comparable**: compareTo() 메서드, 클래스 내부에 정의
- **Comparator**: compare() 메서드, 외부에서 정의
- **사용처**: Collections.sort(), TreeSet, TreeMap

#### 실무 예시
```java
// Comparable
class User implements Comparable<User> {
    public int compareTo(User o) { return this.age - o.age; }
}
// Comparator
users.sort(Comparator.comparing(User::getName));
```

#### 면접 답변 예시
**1분**: "Comparable은 클래스의 기본 정렬을 정의하고, Comparator는 다양한 정렬 기준을 외부에서 제공합니다."

**3분**: "Comparable은 클래스당 하나의 자연 순서를 정의합니다. Comparator는 정렬 기준을 유연하게 변경할 수 있고, 람다로 간결하게 작성 가능합니다. Comparator.comparing().thenComparing()으로 다단계 정렬도 가능합니다."

#### 꼬리 질문
- compareTo에서 뺄셈 사용 시 주의점은?
- Comparator.nullsFirst()의 용도는?

---

### Q38. 제네릭 와일드카드 (?, extends, super)란?

#### A. 핵심 요약
?는 알 수 없는 타입, extends는 상한, super는 하한 제한입니다.

#### 상세 설명
- **<?>**: 모든 타입 가능, 읽기만 가능
- **<? extends T>**: T 또는 T의 하위 타입 (공변, Producer)
- **<? super T>**: T 또는 T의 상위 타입 (반공변, Consumer)
- **PECS**: Producer-Extends, Consumer-Super

#### 실무 예시
```java
void copy(List<? extends T> src, List<? super T> dest)
```

#### 면접 답변 예시
**1분**: "extends는 읽기용(Producer), super는 쓰기용(Consumer)입니다. PECS 원칙을 따릅니다."

**3분**: "List<? extends Number>는 Number의 하위 타입을 담은 리스트로, 읽으면 Number지만 추가는 불가합니다. List<? super Integer>는 Integer 이상 타입을 담아 Integer를 추가할 수 있지만, 읽으면 Object입니다."

#### 꼬리 질문
- List<Object>와 List<?>의 차이는?
- 타입 소거 후 와일드카드는 어떻게 되나요?

---

### Q39. Set의 종류와 차이점은?

#### A. 핵심 요약
HashSet은 순서 없음, LinkedHashSet은 삽입 순서, TreeSet은 정렬 순서입니다.

#### 상세 설명
- **HashSet**: HashMap 기반, O(1) 연산
- **LinkedHashSet**: 삽입 순서 유지
- **TreeSet**: Red-Black Tree, O(log n) 연산, 정렬
- **공통점**: 중복 불허, null 처리 차이

#### 실무 예시
- 중복 제거: HashSet
- 순서 유지 중복 제거: LinkedHashSet
- 범위 검색: TreeSet

#### 면접 답변 예시
**1분**: "HashSet은 빠르고 순서 없음, TreeSet은 정렬, LinkedHashSet은 삽입 순서를 유지합니다."

**3분**: "HashSet은 HashMap의 키로 저장합니다. TreeSet은 Comparable 또는 Comparator가 필요하고, subSet, headSet 같은 범위 연산을 지원합니다. 정렬이 필요 없으면 HashSet이 성능상 유리합니다."

#### 꼬리 질문
- EnumSet의 장점은?
- TreeSet에 null을 넣을 수 있나요?

---

### Q40. Map의 종류와 선택 기준은?

#### A. 핵심 요약
HashMap은 빠름, LinkedHashMap은 순서 유지, TreeMap은 키 정렬입니다.

#### 상세 설명
- **HashMap**: O(1), 순서 없음
- **LinkedHashMap**: 삽입/접근 순서 유지, LRU 캐시 구현
- **TreeMap**: O(log n), 키 정렬
- **ConcurrentHashMap**: 동시성 지원

#### 실무 예시
- 일반 용도: HashMap
- LRU 캐시: LinkedHashMap (accessOrder=true)
- 범위 검색: TreeMap

#### 면접 답변 예시
**1분**: "대부분 HashMap을 사용하고, 순서가 필요하면 LinkedHashMap, 정렬이 필요하면 TreeMap입니다."

**3분**: "LinkedHashMap의 removeEldestEntry를 오버라이드하면 LRU 캐시를 쉽게 구현할 수 있습니다. TreeMap은 floorKey, ceilingKey 같은 네비게이션 메서드를 제공합니다."

#### 꼬리 질문
- WeakHashMap은 언제 사용하나요?
- IdentityHashMap은?

---

### Q41. Iterator와 Iterable의 차이는?

#### A. 핵심 요약
Iterable은 Iterator를 제공하는 인터페이스, Iterator는 순회를 위한 인터페이스입니다.

#### 상세 설명
- **Iterable**: iterator() 메서드, for-each 사용 가능
- **Iterator**: hasNext(), next(), remove() 메서드
- **fail-fast**: 순회 중 수정 시 ConcurrentModificationException

#### 실무 예시
- for-each: Iterable 구현 필요
- 순회 중 삭제: Iterator.remove() 사용

#### 면접 답변 예시
**1분**: "Iterable은 for-each 사용을 위한 인터페이스이고, Iterator는 실제 순회 로직을 담당합니다."

**3분**: "Collection은 Iterable을 상속합니다. Iterator로 순회 중 remove()만 안전하게 삭제 가능합니다. Java 8의 forEachRemaining()으로 람다 순회가 가능합니다."

#### 꼬리 질문
- ListIterator란?
- fail-fast와 fail-safe의 차이는?

---

### Q42. Java 예외 처리 Best Practice는?

#### A. 핵심 요약
구체적 예외 사용, 복구 가능하면 처리, 불가능하면 전파합니다.

#### 상세 설명
- **구체적 예외**: Exception 대신 구체적 타입
- **예외 감싸기**: 저수준 예외를 고수준으로 변환
- **로깅**: 예외 정보 기록
- **cleanup**: finally 또는 try-with-resources

#### 실무 예시
```java
try {
    // 비즈니스 로직
} catch (SQLException e) {
    throw new DataAccessException("DB 오류", e);
}
```

#### 면접 답변 예시
**1분**: "구체적 예외를 사용하고, 복구 불가능하면 적절히 감싸서 전파합니다."

**3분**: "catch에서 예외를 먹지 말고 로깅이나 재처리를 합니다. 예외 메시지에 디버깅에 필요한 정보를 포함합니다. Spring의 @ExceptionHandler, @ControllerAdvice로 전역 처리가 가능합니다."

#### 꼬리 질문
- 예외를 흐름 제어에 사용하면 안 되는 이유는?
- checked를 unchecked로 변환하는 방법은?

---

### Q43. Collectors 유틸리티란?

#### A. 핵심 요약
스트림 결과를 수집하는 다양한 정적 팩토리 메서드를 제공합니다.

#### 상세 설명
- **컬렉션**: toList(), toSet(), toMap()
- **그룹핑**: groupingBy(), partitioningBy()
- **집계**: counting(), summingInt(), averagingDouble()
- **문자열**: joining()

#### 실무 예시
```java
Map<String, List<User>> byCity = users.stream()
    .collect(Collectors.groupingBy(User::getCity));
```

#### 면접 답변 예시
**1분**: "Collectors는 스트림 결과를 컬렉션으로 수집하거나 그룹핑, 집계하는 유틸리티입니다."

**3분**: "groupingBy의 downstream으로 counting, mapping 등을 조합할 수 있습니다. toMap에서 키 충돌 시 merge function을 제공해야 합니다. Java 10+ toUnmodifiableList()로 불변 리스트를 얻습니다."

#### 꼬리 질문
- toMap에서 키 충돌 처리 방법은?
- downstream collector란?

---

### Q44. String Pool이란?

#### A. 핵심 요약
문자열 리터럴을 재사용하기 위해 힙 내에 저장하는 특수 영역입니다.

#### 상세 설명
- **리터럴**: String Pool에서 같은 객체 참조
- **new String**: 새 객체 생성
- **intern()**: 풀에 추가하고 참조 반환
- **위치**: Java 7+부터 힙 영역

#### 실무 예시
```java
String s1 = "hello";      // Pool에서 가져옴
String s2 = "hello";      // 같은 참조
String s3 = new String("hello"); // 새 객체
s1 == s2  // true
s1 == s3  // false
s1 == s3.intern()  // true
```

#### 면접 답변 예시
**1분**: "String Pool은 문자열 리터럴을 재사용하여 메모리를 절약하는 힙 내 영역입니다."

**3분**: "Java 6까지 PermGen, Java 7부터 Heap에 위치합니다. intern()은 풀에 있으면 참조 반환, 없으면 추가 후 반환합니다. 과도한 intern()은 GC 부담이 되므로 주의가 필요합니다."

#### 꼬리 질문
- intern() 남용 시 문제점은?
- String 상수 연결은 어떻게 최적화되나요?

---

### Q45. StringBuilder vs StringBuffer 차이는?

#### A. 핵심 요약
StringBuilder는 비동기로 빠르고, StringBuffer는 동기화로 스레드 안전합니다.

#### 상세 설명
- **StringBuilder**: 단일 스레드용, 동기화 없음
- **StringBuffer**: 멀티스레드용, synchronized 메서드
- **성능**: StringBuilder가 10~15% 빠름
- **용량**: 초기 16, 자동 확장

#### 실무 예시
- 단일 스레드: StringBuilder
- 멀티스레드: StringBuffer (드물게 필요)

#### 면접 답변 예시
**1분**: "StringBuilder는 동기화 없이 빠르고, StringBuffer는 스레드 안전합니다. 대부분 StringBuilder를 사용합니다."

**3분**: "멀티스레드 환경에서도 지역 변수로 사용하면 스레드 간 공유가 없어 StringBuilder로 충분합니다. 문자열 연결이 많으면 초기 용량을 지정하여 재할당을 줄입니다."

#### 꼬리 질문
- String + 연산은 내부적으로 어떻게 동작하나요?
- StringJoiner란?

---

### Q46. 익명 클래스(Anonymous Class)란?

#### A. 핵심 요약
이름 없이 선언과 동시에 인스턴스를 생성하는 일회용 클래스입니다.

#### 상세 설명
- **용도**: 인터페이스/추상클래스의 일회성 구현
- **제약**: 생성자 정의 불가, 단일 상속/구현
- **this**: 익명 클래스 자신을 참조
- **Java 8**: 람다로 대부분 대체 가능

#### 실무 예시
```java
Runnable r = new Runnable() {
    public void run() { System.out.println("running"); }
};
```

#### 면접 답변 예시
**1분**: "익명 클래스는 이름 없이 즉석에서 인터페이스를 구현하며, Java 8 이후 람다로 대체 가능합니다."

**3분**: "익명 클래스는 컴파일 시 별도 .class 파일로 생성됩니다. 람다와 달리 상태(필드)를 가질 수 있고, 여러 메서드를 오버라이드할 수 있습니다. 하지만 코드가 길어지면 명명된 클래스로 분리하는 것이 좋습니다."

#### 꼬리 질문
- 람다와 익명 클래스의 this 차이는?
- 익명 클래스에서 외부 변수 참조 조건은?

---

### Q47. 내부 클래스(Inner Class)의 종류는?

#### A. 핵심 요약
멤버 내부 클래스, 정적 내부 클래스, 지역 클래스, 익명 클래스 4가지입니다.

#### 상세 설명
- **멤버 내부 클래스**: 외부 인스턴스에 종속, 외부 멤버 접근 가능
- **정적 내부 클래스**: static, 외부 인스턴스 불필요
- **지역 클래스**: 메서드 내부에 정의
- **익명 클래스**: 이름 없는 일회용 클래스

#### 실무 예시
- Builder 패턴: 정적 내부 클래스
- Iterator 구현: 멤버 내부 클래스

#### 면접 답변 예시
**1분**: "내부 클래스는 멤버, 정적, 지역, 익명 4종류이며, 정적 내부 클래스가 가장 많이 사용됩니다."

**3분**: "멤버 내부 클래스는 외부 참조를 암묵적으로 가져 메모리 누수 위험이 있습니다. 정적 내부 클래스는 외부 참조가 없어 안전합니다. Effective Java에서는 가능하면 정적 내부 클래스를 권장합니다."

#### 꼬리 질문
- 멤버 내부 클래스가 메모리 누수를 일으키는 경우는?
- Outer.this의 의미는?

---

### Q48. 클래스 로더(Class Loader)란?

#### A. 핵심 요약
.class 파일을 읽어 JVM 메모리에 로드하는 컴포넌트입니다.

#### 상세 설명
- **Bootstrap**: JDK 핵심 클래스 (rt.jar)
- **Extension/Platform**: 확장 라이브러리
- **Application**: 클래스패스의 클래스
- **위임 모델**: 부모 → 자식 순으로 위임

#### 실무 예시
- 웹 컨테이너: 앱별 클래스 로더 분리
- 핫 리로딩: 커스텀 클래스 로더

#### 면접 답변 예시
**1분**: "클래스 로더는 .class를 메모리에 로드하며, 부모 위임 모델로 동작합니다."

**3분**: "부모 위임은 보안과 일관성을 위해 상위 로더가 먼저 로드를 시도합니다. 같은 클래스도 다른 로더가 로드하면 다른 타입으로 인식됩니다. 이를 활용해 Tomcat은 앱 간 클래스 격리를 구현합니다."

#### 꼬리 질문
- 부모 위임을 깨는 경우는?
- Class.forName()과 ClassLoader.loadClass()의 차이는?

---

### Q49. Java의 메모리 누수(Memory Leak) 원인은?

#### A. 핵심 요약
사용하지 않는 객체의 참조가 유지되어 GC가 수거하지 못하는 현상입니다.

#### 상세 설명
- **컬렉션**: 객체 제거 안 함
- **리스너**: 등록 후 해제 안 함
- **static**: 장기 참조
- **내부 클래스**: 외부 클래스 참조 유지

#### 실무 예시
- 캐시: 만료 정책 없음
- ThreadLocal: remove() 안 함
- 커넥션: close() 안 함

#### 면접 답변 예시
**1분**: "메모리 누수는 불필요한 참조가 유지되어 GC가 회수하지 못하는 것입니다."

**3분**: "ThreadLocal은 스레드 풀에서 반드시 remove()해야 합니다. WeakHashMap은 키가 GC되면 자동 제거됩니다. 프로파일러로 힙 덤프를 분석하여 누수를 찾을 수 있습니다."

#### 꼬리 질문
- WeakReference란?
- 힙 덤프 분석 방법은?

---

### Q50. volatile 키워드란?

#### A. 핵심 요약
변수의 가시성을 보장하여 스레드 간 최신 값을 읽도록 합니다.

#### 상세 설명
- **가시성**: CPU 캐시 대신 메인 메모리에서 읽기/쓰기
- **순서 보장**: 명령어 재정렬 방지 (happens-before)
- **한계**: 원자성은 보장하지 않음

#### 실무 예시
- 플래그 변수: boolean running
- DCL(Double-Checked Locking)에서 필수

#### 면접 답변 예시
**1분**: "volatile은 변수의 가시성을 보장하여 한 스레드의 수정이 다른 스레드에 즉시 보이게 합니다."

**3분**: "volatile은 읽기/쓰기 각각의 원자성만 보장합니다. count++은 읽기-수정-쓰기 복합 연산이라 volatile로 부족하고 AtomicInteger가 필요합니다. 싱글톤 DCL 패턴에서 instance 변수는 volatile이어야 합니다."

#### 꼬리 질문
- volatile과 synchronized의 차이는?
- happens-before란?

---

### Q51. synchronized 키워드란?

#### A. 핵심 요약
모니터 락으로 한 번에 하나의 스레드만 임계 영역에 접근하게 합니다.

#### 상세 설명
- **메서드 동기화**: this 또는 Class 객체 락
- **블록 동기화**: 특정 객체 락
- **재진입**: 같은 스레드는 재진입 가능
- **주의**: 데드락, 성능 저하

#### 실무 예시
```java
synchronized (this) {
    // 임계 영역
}
```

#### 면접 답변 예시
**1분**: "synchronized는 모니터 락으로 동시 접근을 막아 스레드 안전을 보장합니다."

**3분**: "메서드 전체보다 필요한 부분만 블록으로 동기화하는 것이 성능에 좋습니다. static 메서드는 Class 객체를, 인스턴스 메서드는 this를 락 대상으로 합니다. Java 6+에서 바이어스 락, 경량 락 등 최적화가 적용되었습니다."

#### 꼬리 질문
- 데드락 발생 조건은?
- Lock과 synchronized의 차이는?

---

### Q52. 스레드(Thread) 생성 방법은?

#### A. 핵심 요약
Thread 상속, Runnable 구현, Callable/Future, ExecutorService 등이 있습니다.

#### 상세 설명
- **Thread 상속**: 단일 상속 제약
- **Runnable 구현**: 인터페이스로 유연함
- **Callable**: 반환값과 예외 지원
- **ExecutorService**: 스레드 풀 관리

#### 실무 예시
```java
ExecutorService executor = Executors.newFixedThreadPool(10);
Future<String> future = executor.submit(() -> "result");
```

#### 면접 답변 예시
**1분**: "직접 Thread를 만들기보다 ExecutorService로 스레드 풀을 사용하는 것이 좋습니다."

**3분**: "스레드 생성 비용이 크므로 풀에서 재사용합니다. Executors 팩토리 메서드보다 ThreadPoolExecutor를 직접 설정하면 세밀한 제어가 가능합니다. Spring에서는 @Async와 TaskExecutor를 사용합니다."

#### 꼬리 질문
- Executors.newCachedThreadPool()의 위험성은?
- shutdown()과 shutdownNow()의 차이는?

---

### Q53. 스레드 상태(Thread State)는?

#### A. 핵심 요약
NEW, RUNNABLE, BLOCKED, WAITING, TIMED_WAITING, TERMINATED 6가지입니다.

#### 상세 설명
- **NEW**: 생성됨, start() 전
- **RUNNABLE**: 실행 중 또는 대기
- **BLOCKED**: 락 획득 대기
- **WAITING**: wait(), join() 등으로 대기
- **TIMED_WAITING**: 시간 제한 대기
- **TERMINATED**: 종료됨

#### 실무 예시
- 스레드 덤프: 상태별 스레드 분석
- 모니터링: BLOCKED 스레드 과다 시 경합 의심

#### 면접 답변 예시
**1분**: "스레드는 NEW → RUNNABLE → (BLOCKED/WAITING) → TERMINATED 상태를 거칩니다."

**3분**: "BLOCKED은 모니터 락 획득 대기, WAITING은 notify 대기입니다. 스레드 덤프에서 BLOCKED 스레드가 많으면 동기화 경합, WAITING이 많으면 리소스 대기 문제입니다."

#### 꼬리 질문
- wait()과 sleep()의 차이는?
- interrupt()의 동작은?

---

### Q54. wait(), notify(), notifyAll()이란?

#### A. 핵심 요약
스레드 간 협력을 위한 Object 메서드로, 모니터 락과 함께 사용합니다.

#### 상세 설명
- **wait()**: 락 해제하고 대기
- **notify()**: 대기 중인 스레드 하나 깨움
- **notifyAll()**: 모든 대기 스레드 깨움
- **조건**: synchronized 블록 내에서만 호출 가능

#### 실무 예시
- Producer-Consumer 패턴
- 조건 대기 (while 루프와 함께)

#### 면접 답변 예시
**1분**: "wait/notify는 모니터 기반 스레드 협력 메서드로, synchronized 내에서 사용합니다."

**3분**: "wait은 항상 while 루프 내에서 조건 확인과 함께 사용해야 합니다. spurious wakeup 때문입니다. notify보다 notifyAll이 안전하며, Java 5+ Condition이 더 유연합니다."

#### 꼬리 질문
- spurious wakeup이란?
- Condition 인터페이스란?

---

### Q55. 리플렉션(Reflection)이란?

#### A. 핵심 요약
런타임에 클래스 정보를 조회하고 조작하는 기능입니다.

#### 상세 설명
- **Class 객체**: 클래스 메타데이터
- **용도**: 프레임워크, 테스트, 직렬화
- **API**: getClass(), Class.forName(), getDeclaredMethods()
- **단점**: 성능, 보안, 타입 안전성 저하

#### 실무 예시
- Spring DI: 빈 생성 및 의존성 주입
- JPA: 엔티티 매핑
- JUnit: @Test 메서드 탐색

#### 면접 답변 예시
**1분**: "리플렉션은 런타임에 클래스 구조를 분석하고 동적으로 객체를 생성하거나 메서드를 호출합니다."

**3분**: "프레임워크 개발에 필수지만, 성능 오버헤드와 private 접근 등 캡슐화 위반 위험이 있습니다. setAccessible(true)로 접근 제한을 우회할 수 있지만 보안 관리자가 허용해야 합니다."

#### 꼬리 질문
- 리플렉션이 느린 이유는?
- 다이나믹 프록시란?

---

## Level 3 - 고급 (5~7년차) | 25문제

---

### Q56. JVM 메모리 구조 상세 (Heap 영역)는?

#### A. 핵심 요약
Young Generation(Eden, Survivor)과 Old Generation으로 구성됩니다.

#### 상세 설명
- **Young Gen**: 새 객체 할당, Minor GC 대상
  - Eden: 최초 할당
  - Survivor 0/1: Eden에서 살아남은 객체
- **Old Gen**: 오래 살아남은 객체, Major/Full GC 대상
- **Metaspace**: 클래스 메타데이터 (Java 8+)

#### 실무 예시
- -Xms, -Xmx: 힙 크기 설정
- -XX:NewRatio: Young/Old 비율

#### 면접 답변 예시
**1분**: "힙은 Young(Eden+Survivor)과 Old로 나뉘며, 대부분 객체는 Young에서 죽고 살아남은 객체가 Old로 승격됩니다."

**3분**: "Eden이 가득 차면 Minor GC가 발생하고, 살아남은 객체는 Survivor로 이동합니다. 일정 age에 도달하면 Old로 승격됩니다. Old가 가득 차면 Major GC가 발생하며 STW 시간이 깁니다."

#### 꼬리 질문
- Survivor 영역이 2개인 이유는?
- age threshold란?

---

### Q57. GC 알고리즘 종류는?

#### A. 핵심 요약
Serial, Parallel, CMS, G1, ZGC, Shenandoah 등이 있습니다.

#### 상세 설명
- **Serial GC**: 단일 스레드, 소규모 앱
- **Parallel GC**: 멀티 스레드, throughput 중시
- **CMS**: 동시 수행, 짧은 STW (deprecated)
- **G1**: 리전 기반, Java 9+ 기본
- **ZGC**: 초저지연 (10ms 미만)

#### 실무 예시
- 웹 서버: G1 또는 ZGC
- 배치: Parallel GC

#### 면접 답변 예시
**1분**: "G1이 Java 9+ 기본이며, 저지연이 필요하면 ZGC를 고려합니다."

**3분**: "G1은 힙을 리전으로 나누어 예측 가능한 STW를 제공합니다. ZGC는 수 TB 힙에서도 10ms 미만 지연을 목표로 합니다. 선택 기준은 힙 크기, 지연 민감도, throughput 요구사항입니다."

#### 꼬리 질문
- G1 GC의 동작 원리는?
- ZGC의 Colored Pointer란?

---

### Q58. G1 GC 동작 원리는?

#### A. 핵심 요약
힙을 동일 크기 리전으로 나누어 garbage가 많은 리전을 우선 수집합니다.

#### 상세 설명
- **리전**: Eden, Survivor, Old, Humongous로 역할 동적 할당
- **Young GC**: Eden + Survivor 리전 수집
- **Mixed GC**: Young + 일부 Old 리전 수집
- **Concurrent Marking**: 백그라운드에서 live 객체 마킹

#### 실무 예시
- -XX:MaxGCPauseMillis: 목표 STW 시간
- -XX:G1HeapRegionSize: 리전 크기

#### 면접 답변 예시
**1분**: "G1은 힙을 리전으로 나누고, garbage가 많은 리전을 우선 수집하여 예측 가능한 STW를 제공합니다."

**3분**: "Concurrent Marking으로 Old 리전의 liveness를 계산하고, Mixed GC에서 효율적인 리전을 선택합니다. Humongous 객체는 리전 크기의 50% 이상이며, 연속된 리전에 할당됩니다."

#### 꼬리 질문
- Humongous 객체 문제점은?
- Remembered Set이란?

---

### Q59. 스레드 덤프 분석 방법은?

#### A. 핵심 요약
jstack으로 덤프를 얻고, 상태별 스레드와 락 정보를 분석합니다.

#### 상세 설명
- **덤프 명령**: jstack <pid> 또는 kill -3
- **분석 포인트**: BLOCKED 스레드, 락 대기 체인
- **데드락 탐지**: Found one Java-level deadlock
- **스택 트레이스**: 스레드별 실행 위치

#### 실무 예시
- CPU 100%: RUNNABLE 스레드 스택 확인
- 응답 지연: BLOCKED/WAITING 원인 파악

#### 면접 답변 예시
**1분**: "jstack으로 스레드 덤프를 얻어 BLOCKED 스레드와 락 정보를 분석합니다."

**3분**: "스레드 덤프에서 'waiting to lock'으로 락 대기 관계를 파악합니다. 여러 번 덤프를 떠서 패턴을 분석합니다. VisualVM, Thread Dump Analyzer 같은 도구를 활용하면 편리합니다."

#### 꼬리 질문
- 데드락 진단 방법은?
- async-profiler란?

---

### Q60. 힙 덤프 분석 방법은?

#### A. 핵심 요약
힙 덤프로 메모리 상태를 캡처하고, MAT 등으로 누수 객체를 찾습니다.

#### 상세 설명
- **덤프 생성**: jmap -dump:format=b,file=heap.hprof <pid>
- **자동 덤프**: -XX:+HeapDumpOnOutOfMemoryError
- **분석 도구**: Eclipse MAT, VisualVM
- **분석 포인트**: Dominator Tree, Leak Suspects

#### 실무 예시
- OOM 발생 시: 자동 생성된 힙 덤프 분석
- 메모리 증가: 주기적 덤프 비교

#### 면접 답변 예시
**1분**: "힙 덤프를 MAT로 열어 Dominator Tree와 Leak Suspects 리포트로 누수 원인을 찾습니다."

**3분**: "Retained Heap이 큰 객체를 추적합니다. GC Root에서 객체까지의 경로를 분석하여 왜 수거되지 않는지 파악합니다. Shallow Heap vs Retained Heap 차이를 이해해야 합니다."

#### 꼬리 질문
- Shallow Heap과 Retained Heap의 차이는?
- GC Root란?

---

### Q61. JIT 컴파일러란?

#### A. 핵심 요약
자주 실행되는 바이트코드를 런타임에 네이티브 코드로 컴파일하여 성능을 높입니다.

#### 상세 설명
- **핫스팟 탐지**: 실행 빈도 측정 (카운터)
- **C1 (Client)**: 빠른 컴파일, 간단한 최적화
- **C2 (Server)**: 느린 컴파일, 공격적 최적화
- **Tiered Compilation**: C1 → C2 단계적 최적화

#### 실무 예시
- 워밍업: 초기 요청 시 지연 발생
- -XX:+PrintCompilation: 컴파일 로그

#### 면접 답변 예시
**1분**: "JIT는 핫스팟 코드를 네이티브로 컴파일하여 인터프리터보다 빠르게 실행합니다."

**3분**: "Tiered Compilation(기본)은 처음 인터프리터 → C1 → C2로 점진적 최적화합니다. 인라이닝, 탈출 분석, 루프 언롤링 등의 최적화를 적용합니다. GraalVM의 Graal 컴파일러는 더 공격적인 최적화를 제공합니다."

#### 꼬리 질문
- 탈출 분석(Escape Analysis)이란?
- AOT 컴파일이란?

---

### Q62. ThreadLocal이란?

#### A. 핵심 요약
스레드별로 독립적인 변수 사본을 유지하는 메커니즘입니다.

#### 상세 설명
- **스레드 격리**: 각 스레드가 자신만의 값 보유
- **용도**: 사용자 컨텍스트, 트랜잭션, 포맷터
- **주의**: 스레드 풀에서 remove() 필수
- **InheritableThreadLocal**: 자식 스레드에 상속

#### 실무 예시
- Spring SecurityContextHolder
- MDC(Mapped Diagnostic Context) 로깅

#### 면접 답변 예시
**1분**: "ThreadLocal은 스레드마다 독립된 값을 저장하여 동기화 없이 안전하게 사용합니다."

**3분**: "Thread 내부에 ThreadLocalMap으로 저장됩니다. 스레드 풀에서는 작업 완료 후 remove()하지 않으면 이전 요청 데이터가 남아 메모리 누수와 보안 문제가 발생합니다."

#### 꼬리 질문
- ThreadLocal 메모리 누수 원인은?
- TransmittableThreadLocal이란?

---

### Q63. Lock 인터페이스 vs synchronized?

#### A. 핵심 요약
Lock은 더 유연한 동기화를 제공하며, 조건 대기와 타임아웃을 지원합니다.

#### 상세 설명
- **ReentrantLock**: synchronized 대체, 공정성 옵션
- **tryLock()**: 논블로킹 락 획득 시도
- **lockInterruptibly()**: 인터럽트 가능한 락
- **Condition**: 다중 대기 조건

#### 실무 예시
```java
Lock lock = new ReentrantLock();
lock.lock();
try {
    // 임계 영역
} finally {
    lock.unlock();
}
```

#### 면접 답변 예시
**1분**: "Lock은 synchronized보다 유연하며, 타임아웃, 인터럽트, 공정성을 지원합니다."

**3분**: "synchronized는 블록 범위 자동 해제지만, Lock은 명시적 lock/unlock이 필요합니다. finally에서 반드시 unlock해야 합니다. ReadWriteLock으로 읽기 동시성을 높일 수 있습니다."

#### 꼬리 질문
- ReadWriteLock이란?
- StampedLock이란?

---

### Q64. CompletableFuture란?

#### A. 핵심 요약
비동기 작업의 조합과 콜백 처리를 지원하는 Java 8의 Future 확장입니다.

#### 상세 설명
- **비동기 실행**: supplyAsync(), runAsync()
- **체이닝**: thenApply(), thenAccept(), thenCompose()
- **조합**: allOf(), anyOf()
- **예외 처리**: exceptionally(), handle()

#### 실무 예시
```java
CompletableFuture.supplyAsync(() -> fetchData())
    .thenApply(data -> process(data))
    .thenAccept(result -> save(result));
```

#### 면접 답변 예시
**1분**: "CompletableFuture는 비동기 작업을 선언적으로 체이닝하고 조합할 수 있습니다."

**3분**: "기존 Future는 get()으로 블로킹해야 했지만, CompletableFuture는 콜백으로 논블로킹 처리가 가능합니다. 기본 ForkJoinPool.commonPool()을 사용하므로, 별도 Executor 지정을 권장합니다."

#### 꼬리 질문
- thenApply vs thenCompose 차이는?
- Async 접미사 메서드의 의미는?

---

### Q65. Executors 프레임워크란?

#### A. 핵심 요약
스레드 생성과 관리를 추상화한 병렬 처리 프레임워크입니다.

#### 상세 설명
- **ExecutorService**: 작업 제출 및 생명주기 관리
- **ThreadPoolExecutor**: 코어/최대 스레드, 큐 설정
- **ScheduledExecutorService**: 지연/주기 실행
- **ForkJoinPool**: 분할정복 병렬 처리

#### 실무 예시
```java
ThreadPoolExecutor executor = new ThreadPoolExecutor(
    10, 20, 60, TimeUnit.SECONDS,
    new LinkedBlockingQueue<>(100)
);
```

#### 면접 답변 예시
**1분**: "Executors로 스레드 풀을 관리하고, 직접 스레드 생성 대신 작업을 제출합니다."

**3분**: "Executors.newFixedThreadPool() 등 팩토리보다 ThreadPoolExecutor를 직접 설정하는 것이 좋습니다. 큐가 무한대면 OOM 위험이 있으므로 bounded queue와 rejection policy를 설정합니다."

#### 꼬리 질문
- RejectedExecutionHandler 종류는?
- CallerRunsPolicy란?

---

### Q66. ForkJoinPool이란?

#### A. 핵심 요약
분할정복 알고리즘을 위한 Work-Stealing 기반 스레드 풀입니다.

#### 상세 설명
- **Work-Stealing**: 유휴 스레드가 다른 스레드의 작업을 훔쳐 실행
- **RecursiveTask**: 결과 반환하는 작업
- **RecursiveAction**: 결과 없는 작업
- **parallelStream**: ForkJoinPool.commonPool() 사용

#### 실무 예시
- 대용량 배열 처리
- 트리 구조 병렬 탐색

#### 면접 답변 예시
**1분**: "ForkJoinPool은 작업을 재귀적으로 분할하고, Work-Stealing으로 부하를 분산합니다."

**3분**: "각 스레드는 자신의 Deque에서 작업을 가져오고, 비면 다른 스레드 Deque의 뒤에서 훔쳐옵니다. commonPool은 공유되므로 블로킹 작업에 주의해야 합니다. ManagedBlocker로 블로킹을 관리할 수 있습니다."

#### 꼬리 질문
- Work-Stealing의 장점은?
- commonPool 사용 시 주의점은?

---

### Q67. Atomic 클래스란?

#### A. 핵심 요약
CAS 연산으로 락 없이 원자적 연산을 제공하는 클래스입니다.

#### 상세 설명
- **종류**: AtomicInteger, AtomicLong, AtomicReference
- **CAS**: Compare-And-Swap, 하드웨어 지원
- **메서드**: get(), set(), compareAndSet(), incrementAndGet()
- **장점**: 락보다 가벼움, 높은 동시성

#### 실무 예시
- 카운터: AtomicLong counter
- 상태 플래그: AtomicBoolean

#### 면접 답변 예시
**1분**: "Atomic 클래스는 CAS로 락 없이 원자적 연산을 수행하여 동시성 성능을 높입니다."

**3분**: "CAS는 기대값과 현재값을 비교하여 같으면 갱신합니다. 실패하면 재시도합니다. 경쟁이 심하면 LongAdder가 더 효율적입니다. Java 8의 accumulateAndGet으로 람다도 지원합니다."

#### 꼬리 질문
- CAS의 ABA 문제란?
- LongAdder vs AtomicLong 차이는?

---

### Q68. ConcurrentHashMap 내부 구조 (Java 8+)는?

#### A. 핵심 요약
Node 배열 + CAS + synchronized로 버킷 단위 동시성을 제공합니다.

#### 상세 설명
- **구조**: Node[] table, 해시 충돌 시 연결 리스트/트리
- **읽기**: volatile 읽기, 락 없음
- **쓰기**: 빈 버킷은 CAS, 충돌 시 synchronized(노드)
- **리사이징**: 여러 스레드가 협력하여 전송

#### 실무 예시
- 동시성 캐시
- 빈도 카운팅

#### 면접 답변 예시
**1분**: "Java 8 ConcurrentHashMap은 버킷의 첫 노드를 락으로 사용하여 세밀한 동시성을 제공합니다."

**3분**: "Java 7의 Segment 방식에서 버킷 단위로 변경되었습니다. 빈 버킷에는 CAS로 삽입하고, 이미 노드가 있으면 해당 노드를 synchronized로 잠급니다. size()는 baseCount + counterCells로 근사치를 반환합니다."

#### 꼬리 질문
- Java 7과 8의 구현 차이는?
- computeIfAbsent()의 락 동작은?

---

### Q69. 동시성 컬렉션 종류는?

#### A. 핵심 요약
ConcurrentHashMap, CopyOnWriteArrayList, BlockingQueue 등이 있습니다.

#### 상세 설명
- **ConcurrentHashMap**: 동시성 Map
- **CopyOnWriteArrayList**: 쓰기 시 복사, 읽기 많을 때
- **BlockingQueue**: 생산자-소비자 패턴
- **ConcurrentSkipListMap**: 정렬된 동시성 Map

#### 실무 예시
- 이벤트 리스너: CopyOnWriteArrayList
- 작업 큐: LinkedBlockingQueue

#### 면접 답변 예시
**1분**: "java.util.concurrent에 동시성에 최적화된 컬렉션들이 있습니다."

**3분**: "CopyOnWriteArrayList는 쓰기마다 배열을 복사하므로 읽기가 많고 쓰기가 드문 경우에 적합합니다. BlockingQueue의 put/take는 블로킹되어 생산자-소비자 패턴에 유용합니다."

#### 꼬리 질문
- CopyOnWriteArrayList의 단점은?
- LinkedBlockingQueue vs ArrayBlockingQueue?

---

### Q70. 다이나믹 프록시(Dynamic Proxy)란?

#### A. 핵심 요약
런타임에 인터페이스의 프록시 객체를 동적으로 생성하는 기능입니다.

#### 상세 설명
- **JDK Proxy**: 인터페이스 기반, Proxy.newProxyInstance()
- **InvocationHandler**: 메서드 호출 가로채기
- **용도**: AOP, 로깅, 트랜잭션
- **한계**: 인터페이스 필수

#### 실무 예시
- Spring AOP: JDK Proxy 또는 CGLIB
- MyBatis Mapper

#### 면접 답변 예시
**1분**: "다이나믹 프록시는 런타임에 인터페이스 구현체를 생성하여 메서드 호출을 가로챕니다."

**3분**: "InvocationHandler.invoke()에서 모든 메서드 호출이 처리됩니다. 인터페이스가 없으면 CGLIB으로 클래스 상속 프록시를 만듭니다. Spring은 기본적으로 인터페이스 있으면 JDK Proxy, 없으면 CGLIB을 사용합니다."

#### 꼬리 질문
- CGLIB이란?
- Spring AOP와 AspectJ의 차이는?

---

### Q71. WeakReference, SoftReference, PhantomReference란?

#### A. 핵심 요약
GC와의 상호작용을 제어하는 참조 타입으로, 캐시나 모니터링에 사용됩니다.

#### 상세 설명
- **Strong**: 일반 참조, GC 대상 아님
- **Soft**: 메모리 부족 시 GC
- **Weak**: 다음 GC에서 수거
- **Phantom**: finalize 후 정리 작업용

#### 실무 예시
- 캐시: SoftReference
- 리스너 등록: WeakHashMap

#### 면접 답변 예시
**1분**: "SoftReference는 메모리 부족 시, WeakReference는 즉시 GC 대상이 됩니다. 캐시에 SoftReference를 사용합니다."

**3분**: "WeakHashMap은 키가 약참조라 외부 참조가 없으면 엔트리가 제거됩니다. PhantomReference는 finalize 대신 Cleaner와 함께 리소스 정리에 사용합니다. ReferenceQueue로 참조 해제를 감지합니다."

#### 꼬리 질문
- ReferenceQueue의 용도는?
- Cleaner란? (Java 9+)

---

### Q72. Java 모듈 시스템 (Java 9+)이란?

#### A. 핵심 요약
패키지의 상위 개념으로, 강한 캡슐화와 명시적 의존성을 제공합니다.

#### 상세 설명
- **module-info.java**: 모듈 정의
- **requires**: 의존 모듈 선언
- **exports**: 공개 패키지 선언
- **장점**: 더 작은 JRE, 강한 캡슐화

#### 실무 예시
```java
module com.myapp {
    requires java.sql;
    exports com.myapp.api;
}
```

#### 면접 답변 예시
**1분**: "Java 9 모듈 시스템은 패키지를 그룹화하고 명시적 의존성과 캡슐화를 제공합니다."

**3분**: "exports하지 않은 패키지는 다른 모듈에서 접근 불가합니다. jlink로 필요한 모듈만 포함한 커스텀 런타임을 만들 수 있습니다. 기존 라이브러리는 자동 모듈로 취급됩니다."

#### 꼬리 질문
- 자동 모듈이란?
- jlink의 용도는?

---

### Q73. record 클래스란? (Java 14+)

#### A. 핵심 요약
불변 데이터 캐리어를 간결하게 정의하는 클래스입니다.

#### 상세 설명
- **자동 생성**: 생성자, getter, equals, hashCode, toString
- **불변**: final 필드
- **제약**: 상속 불가, 인스턴스 필드 추가 불가
- **용도**: DTO, VO

#### 실무 예시
```java
public record Point(int x, int y) {}
```

#### 면접 답변 예시
**1분**: "record는 불변 데이터 클래스를 한 줄로 정의하며, 보일러플레이트를 제거합니다."

**3분**: "컴포넌트별 getter(x(), y()), equals/hashCode/toString이 자동 생성됩니다. Compact Constructor로 유효성 검증을 추가할 수 있습니다. Lombok @Value와 유사하지만 언어 수준 지원입니다."

#### 꼬리 질문
- Compact Constructor란?
- sealed 클래스와 record 조합은?

---

### Q74. sealed 클래스란? (Java 17)

#### A. 핵심 요약
상속 가능한 클래스를 명시적으로 제한하는 기능입니다.

#### 상세 설명
- **sealed**: 허용된 하위 클래스만 상속 가능
- **permits**: 허용할 클래스 나열
- **하위 클래스**: final, sealed, non-sealed 중 선택
- **용도**: 도메인 모델링, 패턴 매칭

#### 실무 예시
```java
public sealed class Shape permits Circle, Rectangle {}
final class Circle extends Shape {}
```

#### 면접 답변 예시
**1분**: "sealed는 상속 계층을 제한하여 컴파일러가 모든 하위 타입을 알 수 있게 합니다."

**3분**: "패턴 매칭 switch에서 exhaustiveness 검사가 가능해집니다. 도메인에서 허용된 타입만 존재함을 보장합니다. record와 조합하여 대수적 데이터 타입을 표현할 수 있습니다."

#### 꼬리 질문
- non-sealed의 의미는?
- 패턴 매칭 switch란?

---

### Q75. 가상 스레드(Virtual Thread)란? (Java 21)

#### A. 핵심 요약
경량 스레드로, 수백만 개의 동시 작업을 효율적으로 처리합니다.

#### 상세 설명
- **경량**: OS 스레드가 아닌 JVM 관리 스레드
- **블로킹 해결**: 블로킹 시 캐리어 스레드 해제
- **생성**: Thread.ofVirtual(), Executors.newVirtualThreadPerTaskExecutor()
- **호환**: 기존 Thread API 호환

#### 실무 예시
```java
try (var executor = Executors.newVirtualThreadPerTaskExecutor()) {
    executor.submit(() -> blockingIO());
}
```

#### 면접 답변 예시
**1분**: "가상 스레드는 경량 스레드로, I/O 바운드 작업에서 수백만 동시 처리가 가능합니다."

**3분**: "기존 플랫폼 스레드는 OS 스레드와 1:1 매핑이라 수천 개가 한계였습니다. 가상 스레드는 블로킹 시 캐리어 스레드를 반환하므로, 동기 코드로 높은 동시성을 얻습니다. ThreadLocal 사용에 주의가 필요합니다."

#### 꼬리 질문
- 캐리어 스레드란?
- 가상 스레드에서 synchronized 주의점은?

---

### Q76. 패턴 매칭 (Pattern Matching)이란? (Java 16+)

#### A. 핵심 요약
instanceof와 switch에서 타입 검사와 캐스팅을 한 번에 처리합니다.

#### 상세 설명
- **instanceof 패턴**: 타입 검사 + 변수 바인딩
- **switch 패턴**: 타입별 분기 + 가드
- **레코드 패턴**: 레코드 분해 (Java 21)
- **Exhaustiveness**: sealed 타입에서 모든 케이스 검사

#### 실무 예시
```java
if (obj instanceof String s) {
    System.out.println(s.length());
}
```

#### 면접 답변 예시
**1분**: "패턴 매칭은 타입 검사와 캐스팅을 결합하여 코드를 간결하게 합니다."

**3분**: "switch 패턴 매칭으로 visitor 패턴을 대체할 수 있습니다. sealed 클래스와 조합하면 컴파일러가 누락된 케이스를 검출합니다. 레코드 패턴으로 중첩 구조도 분해 가능합니다."

#### 꼬리 질문
- 가드(when)절이란?
- 레코드 패턴의 예시는?

---

### Q77. 문자열 블록 (Text Block)이란? (Java 15)

#### A. 핵심 요약
여러 줄 문자열을 가독성 좋게 작성하는 리터럴입니다.

#### 상세 설명
- **문법**: """ 로 시작과 끝
- **특징**: 이스케이프 최소화, 들여쓰기 자동 처리
- **메서드**: stripIndent(), translateEscapes()

#### 실무 예시
```java
String json = """
    {
        "name": "John",
        "age": 30
    }
    """;
```

#### 면접 답변 예시
**1분**: "Text Block은 여러 줄 문자열을 자연스럽게 작성할 수 있어 JSON, SQL에 유용합니다."

**3분**: "공통 들여쓰기는 자동 제거됩니다. 닫는 \"\"\" 위치로 들여쓰기를 제어합니다. \\로 줄바꿈 방지, \\s로 후행 공백 유지가 가능합니다."

#### 꼬리 질문
- 들여쓰기 제어 방법은?
- String Templates는? (Java 21 Preview)

---

### Q78. 메서드 핸들(MethodHandle)이란?

#### A. 핵심 요약
리플렉션보다 빠른 메서드 참조 및 호출 메커니즘입니다.

#### 상세 설명
- **MethodHandles.Lookup**: 핸들 조회
- **invoke/invokeExact**: 핸들 호출
- **장점**: JIT 최적화 대상, 타입 안전
- **용도**: 언어 구현, invokedynamic

#### 실무 예시
- 람다 내부 구현
- 프레임워크 동적 호출

#### 면접 답변 예시
**1분**: "MethodHandle은 리플렉션보다 빠르고 JIT 최적화되는 동적 메서드 호출입니다."

**3분**: "리플렉션은 매 호출마다 검증하지만, MethodHandle은 룩업 시 한 번 검증합니다. invokedynamic과 함께 람다 표현식의 백엔드로 사용됩니다. 일반 애플리케이션보다 프레임워크에서 주로 활용됩니다."

#### 꼬리 질문
- invokedynamic이란?
- VarHandle이란?

---

### Q79. Unsafe 클래스란?

#### A. 핵심 요약
JVM 내부 저수준 연산을 수행하는 비공개 API입니다.

#### 상세 설명
- **기능**: 직접 메모리 접근, CAS 연산, 클래스 조작
- **용도**: 고성능 라이브러리, Atomic 클래스 구현
- **위험**: 안전성 검사 우회, JVM 크래시 가능
- **대안**: VarHandle (Java 9+)

#### 실무 예시
- Netty: 다이렉트 버퍼
- Atomic 클래스 내부

#### 면접 답변 예시
**1분**: "Unsafe는 저수준 메모리 연산을 제공하지만, 위험하여 직접 사용을 권장하지 않습니다."

**3분**: "AtomicInteger.compareAndSet()은 내부적으로 Unsafe.compareAndSwapInt()를 호출합니다. Java 9+에서 VarHandle이 안전한 대안으로 제공됩니다. 모듈 시스템으로 접근이 더 제한되었습니다."

#### 꼬리 질문
- 왜 Unsafe라고 부르나요?
- 오프힙 메모리란?

---

### Q80. Java Flight Recorder (JFR)란?

#### A. 핵심 요약
JVM의 프로파일링 및 진단 데이터를 저오버헤드로 수집하는 도구입니다.

#### 상세 설명
- **내장**: JDK 11+에서 무료
- **저오버헤드**: 프로덕션 사용 가능 (1% 미만)
- **이벤트**: GC, 스레드, I/O, 예외 등
- **분석**: JDK Mission Control (JMC)

#### 실무 예시
```bash
java -XX:StartFlightRecording=filename=recording.jfr MyApp
```

#### 면접 답변 예시
**1분**: "JFR은 프로덕션에서 사용 가능한 저오버헤드 프로파일러로, JMC로 분석합니다."

**3분**: "GC 활동, 스레드 상태, 락 경합, 예외, I/O 등 다양한 이벤트를 기록합니다. 커스텀 이벤트를 정의할 수도 있습니다. async-profiler와 달리 Safe Point에 의존하지 않아 정확합니다."

#### 꼬리 질문
- JFR vs async-profiler 차이는?
- Continuous Recording이란?

---

## Level 4 - 아키텍처 & 트러블슈팅 (8~10년차) | 20문제

---

### Q81. JVM 튜닝 전략은?

#### A. 핵심 요약
워크로드 분석 → GC 선택 → 힙 크기 조정 → 모니터링 반복입니다.

#### 상세 설명
- **목표 설정**: 지연(latency) vs 처리량(throughput)
- **힙 크기**: -Xms, -Xmx (보통 동일하게)
- **GC 선택**: G1(범용), ZGC(저지연), Parallel(처리량)
- **모니터링**: GC 로그, JFR, APM

#### 실무 예시
```bash
-Xms4g -Xmx4g -XX:+UseG1GC -XX:MaxGCPauseMillis=200
-Xlog:gc*:file=gc.log
```

#### 면접 답변 예시
**1분**: "목표(지연/처리량)에 맞게 GC를 선택하고, 힙 크기를 조정한 후 GC 로그로 검증합니다."

**3분**: "기본 G1으로 시작하여 GC 로그를 분석합니다. Young 비율, 힙 크기, GC 빈도를 조정합니다. 프로덕션에서 JFR로 지속 모니터링하고, 문제 시 힙 덤프와 스레드 덤프를 분석합니다."

#### 꼬리 질문
- -Xms와 -Xmx를 같게 하는 이유는?
- GC 로그 분석 방법은?

---

### Q82. 대용량 트래픽 처리 전략은?

#### A. 핵심 요약
스케일아웃, 캐싱, 비동기, 커넥션 풀 최적화입니다.

#### 상세 설명
- **스케일아웃**: 로드밸런서 + 다중 인스턴스
- **캐싱**: Redis, 로컬 캐시 (Caffeine)
- **비동기**: 메시지 큐, CompletableFuture
- **DB 최적화**: 커넥션 풀, 읽기 전용 복제본

#### 실무 예시
- HikariCP 커넥션 풀 튜닝
- Redis 캐시 레이어
- Kafka 비동기 처리

#### 면접 답변 예시
**1분**: "수평 확장, 캐싱, 비동기 처리로 병목을 제거하고 처리량을 높입니다."

**3분**: "먼저 APM으로 병목을 찾습니다. DB가 병목이면 캐싱, 읽기 복제본, 쿼리 최적화를 적용합니다. CPU 바운드면 스케일아웃, I/O 바운드면 비동기화를 고려합니다."

#### 꼬리 질문
- 서킷 브레이커란?
- Rate Limiting 구현 방법은?

---

### Q83. 분산 시스템에서 트랜잭션 처리는?

#### A. 핵심 요약
2PC, SAGA, 이벤트 소싱 등의 패턴을 상황에 맞게 적용합니다.

#### 상세 설명
- **2PC**: 코디네이터 기반 원자적 커밋 (강한 일관성)
- **SAGA**: 보상 트랜잭션 체인 (결과적 일관성)
- **이벤트 소싱**: 이벤트로 상태 재구성
- **Outbox 패턴**: 트랜잭션 + 메시지 발행

#### 실무 예시
- 주문-결제-재고: SAGA 패턴
- 이벤트 발행: Transactional Outbox

#### 면접 답변 예시
**1분**: "분산 트랜잭션은 SAGA로 보상 트랜잭션을 구현하거나, 이벤트 기반으로 결과적 일관성을 보장합니다."

**3분**: "2PC는 가용성을 희생하고 강한 일관성을 제공합니다. 마이크로서비스에서는 SAGA가 현실적입니다. Orchestration(중앙 조율자)과 Choreography(이벤트 체인) 방식이 있습니다."

#### 꼬리 질문
- Orchestration vs Choreography?
- 멱등성(Idempotency)이 중요한 이유는?

---

### Q84. 성능 병목 진단 방법은?

#### A. 핵심 요약
모니터링 → 프로파일링 → 병목 식별 → 개선 → 검증 사이클입니다.

#### 상세 설명
- **APM**: 분산 추적, 서비스 맵
- **프로파일링**: CPU(async-profiler), 메모리(힙 덤프)
- **로깅**: 구조화된 로그, 상관 ID
- **메트릭**: Prometheus + Grafana

#### 실무 예시
- Flame Graph로 CPU 핫스팟 분석
- MAT로 메모리 누수 분석

#### 면접 답변 예시
**1분**: "APM으로 느린 구간을 찾고, 프로파일러로 상세 분석한 후 개선합니다."

**3분**: "먼저 메트릭으로 이상 징후를 탐지합니다. 분산 추적으로 느린 서비스를 찾고, 해당 서비스에서 프로파일링합니다. CPU면 Flame Graph, 메모리면 힙 덤프, 락 경합이면 스레드 덤프를 분석합니다."

#### 꼬리 질문
- Flame Graph 읽는 방법은?
- 분산 추적(Distributed Tracing)이란?

---

### Q85. OutOfMemoryError 종류와 대응은?

#### A. 핵심 요약
힙, 메타스페이스, 스택 등 영역별로 원인이 다르며 대응이 다릅니다.

#### 상세 설명
- **Java heap space**: 힙 부족, 메모리 누수
- **Metaspace**: 클래스 로딩 과다
- **GC overhead limit**: GC에 시간 과다 소모
- **unable to create new native thread**: OS 스레드 한계

#### 실무 예시
- 힙 OOM: 힙 덤프 분석으로 누수 객체 찾기
- 메타스페이스: 클래스 로더 누수 확인

#### 면접 답변 예시
**1분**: "OOM 종류에 따라 원인이 다릅니다. 힙 OOM은 메모리 누수, 메타스페이스 OOM은 클래스 로더 문제를 의심합니다."

**3분**: "HeapDumpOnOutOfMemoryError로 자동 덤프를 남기고 MAT로 분석합니다. GC overhead는 힙이 너무 작거나 누수가 심한 경우입니다. 네이티브 스레드 OOM은 스레드 풀 크기나 ulimit을 확인합니다."

#### 꼬리 질문
- Direct Buffer 메모리 부족 시 현상은?
- 컨테이너에서 OOM 특이점은?

---

### Q86. 데드락 탐지 및 해결은?

#### A. 핵심 요약
스레드 덤프로 탐지하고, 락 순서 통일, 타임아웃으로 예방합니다.

#### 상세 설명
- **탐지**: jstack, JMC의 deadlock detection
- **예방**: 락 순서 일관성, tryLock 타임아웃
- **회피**: 락 계층화, 한 번에 하나의 락
- **JVM 자동 탐지**: Found one Java-level deadlock

#### 실무 예시
- 락 순서: A → B 순서 통일
- tryLock(timeout) 사용

#### 면접 답변 예시
**1분**: "jstack으로 데드락을 탐지하고, 락 획득 순서를 통일하여 예방합니다."

**3분**: "데드락 조건: 상호 배제, 점유 대기, 비선점, 순환 대기. 순환 대기를 깨는 것이 가장 실용적입니다. ReentrantLock.tryLock(timeout)으로 무한 대기를 방지할 수 있습니다."

#### 꼬리 질문
- 라이브락이란?
- 기아 상태(Starvation)란?

---

### Q87. 메모리 누수 패턴과 해결은?

#### A. 핵심 요약
컬렉션 미정리, 리스너 미해제, 캐시 무한 성장 등이 주요 원인입니다.

#### 상세 설명
- **컬렉션**: 객체 추가 후 제거 안 함
- **리스너/콜백**: 등록 후 해제 안 함
- **캐시**: 만료 정책 없음
- **ThreadLocal**: remove() 안 함
- **클래스 로더**: 웹앱 재배포 시 누수

#### 실무 예시
- WeakHashMap으로 캐시 구현
- try-finally로 ThreadLocal.remove()

#### 면접 답변 예시
**1분**: "불필요한 참조가 유지되어 GC가 수거하지 못하는 것이 누수입니다. 컬렉션, 리스너, 캐시를 점검합니다."

**3분**: "힙 덤프를 주기적으로 비교하여 증가하는 객체를 찾습니다. GC Root에서 해당 객체까지 경로를 분석하여 누가 참조하는지 파악합니다. 프레임워크 버그일 수도 있으니 버전 확인도 필요합니다."

#### 꼬리 질문
- WeakReference로 누수를 방지하는 방법은?
- Finalizer 누수란?

---

### Q88. 마이크로서비스 아키텍처에서 Java 적용은?

#### A. 핵심 요약
서비스 분리, API 게이트웨이, 서비스 디스커버리, 분산 추적이 핵심입니다.

#### 상세 설명
- **프레임워크**: Spring Boot, Quarkus, Micronaut
- **통신**: REST, gRPC, 메시지 큐
- **설정**: 중앙 Config Server
- **관찰성**: 메트릭, 로깅, 트레이싱

#### 실무 예시
- Spring Cloud Netflix/Kubernetes
- Resilience4j 서킷 브레이커

#### 면접 답변 예시
**1분**: "Spring Boot로 서비스를 구현하고, Spring Cloud 또는 Kubernetes로 인프라를 구성합니다."

**3분**: "각 서비스는 자체 DB를 가지고, API 또는 이벤트로 통신합니다. 서킷 브레이커로 장애 전파를 막고, 분산 추적으로 요청 흐름을 파악합니다. GraalVM Native Image로 기동 시간을 단축할 수 있습니다."

#### 꼬리 질문
- 서비스 메시란?
- GraalVM Native Image 장단점은?

---

### Q89. GraalVM과 Native Image란?

#### A. 핵심 요약
AOT 컴파일로 네이티브 바이너리를 생성하여 빠른 시작과 적은 메모리를 제공합니다.

#### 상세 설명
- **GraalVM**: 다국어 런타임, 고성능 JIT
- **Native Image**: AOT 컴파일, 독립 실행 파일
- **장점**: ms 단위 시작, 적은 메모리
- **한계**: 리플렉션 제한, 빌드 시간

#### 실무 예시
- 서버리스/FaaS: 콜드 스타트 최소화
- CLI 도구: 빠른 실행

#### 면접 답변 예시
**1분**: "GraalVM Native Image는 Java를 네이티브로 컴파일하여 ms 단위 시작이 가능합니다."

**3분**: "AOT이므로 동적 기능(리플렉션, 프록시)은 빌드 시 설정이 필요합니다. Quarkus, Micronaut는 빌드 타임에 DI를 처리하여 Native Image에 최적화되어 있습니다. 클라우드 네이티브 환경에서 각광받고 있습니다."

#### 꼬리 질문
- AOT vs JIT 차이는?
- 리플렉션 설정 방법은?

---

### Q90. 컨테이너 환경에서 Java 최적화는?

#### A. 핵심 요약
컨테이너 리소스 인식, 적절한 힙 설정, 빠른 시작이 중요합니다.

#### 상세 설명
- **리소스 인식**: JDK 10+는 cgroup 인식
- **힙 비율**: -XX:MaxRAMPercentage=75
- **시작 최적화**: CDS, AppCDS, Native Image
- **이미지 경량화**: JRE slim, distroless

#### 실무 예시
```dockerfile
FROM eclipse-temurin:21-jre
COPY app.jar /app.jar
ENTRYPOINT ["java", "-XX:MaxRAMPercentage=75", "-jar", "/app.jar"]
```

#### 면접 답변 예시
**1분**: "컨테이너 메모리 제한을 인식하도록 MaxRAMPercentage를 설정하고, 경량 이미지를 사용합니다."

**3분**: "JDK 8u191 이전은 컨테이너 메모리를 인식하지 못해 호스트 전체 메모리 기준으로 힙을 설정했습니다. 최신 JDK는 cgroup을 인식합니다. CDS(Class Data Sharing)로 시작 시간을 단축하고, 멀티스테이지 빌드로 이미지 크기를 줄입니다."

#### 꼬리 질문
- CDS (Class Data Sharing)란?
- Kubernetes에서 liveness/readiness 설정은?

---

### Q91. API 버전 관리 전략은?

#### A. 핵심 요약
URL 경로, 헤더, 쿼리 파라미터 방식 중 선택하고 하위 호환성을 유지합니다.

#### 상세 설명
- **URL 버전**: /api/v1/users (가장 명시적)
- **헤더 버전**: Accept: application/vnd.api.v1+json
- **쿼리 파라미터**: ?version=1
- **하위 호환**: 필드 추가는 안전, 삭제/변경은 위험

#### 실무 예시
- REST: URL 버전 /api/v1, /api/v2
- GraphQL: 단일 엔드포인트, 스키마 진화

#### 면접 답변 예시
**1분**: "URL 버전이 명시적이고 캐싱에 유리합니다. 하위 호환성을 유지하며 점진적으로 마이그레이션합니다."

**3분**: "새 버전 출시 시 구버전을 일정 기간 유지하고, 클라이언트에 마이그레이션 기간을 제공합니다. OpenAPI로 API 문서를 관리하고, 계약 테스트로 호환성을 검증합니다."

#### 꼬리 질문
- Semantic Versioning이란?
- API 폐기(Deprecation) 절차는?

---

### Q92. 보안 취약점 대응 (OWASP Top 10)은?

#### A. 핵심 요약
인젝션, 인증 실패, XSS 등 주요 취약점을 이해하고 방어합니다.

#### 상세 설명
- **인젝션**: PreparedStatement, ORM 사용
- **인증 실패**: 안전한 세션 관리, MFA
- **XSS**: 출력 인코딩, CSP
- **보안 설정 오류**: 기본 설정 변경, 불필요한 기능 비활성화

#### 실무 예시
- Spring Security 적용
- 의존성 취약점 스캔 (OWASP Dependency-Check)

#### 면접 답변 예시
**1분**: "SQL Injection은 PreparedStatement, XSS는 출력 인코딩으로 방어합니다. Spring Security로 인증/인가를 구현합니다."

**3분**: "의존성 라이브러리의 취약점도 중요합니다. Snyk, OWASP Dependency-Check로 스캔합니다. 민감 정보는 암호화하고, 로그에 노출하지 않습니다. 정기적인 보안 감사와 침투 테스트를 수행합니다."

#### 꼬리 질문
- CSRF 방어 방법은?
- JWT 보안 고려사항은?

---

### Q93. 캐시 전략 설계는?

#### A. 핵심 요약
캐시 위치, 만료 정책, 일관성 전략을 상황에 맞게 설계합니다.

#### 상세 설명
- **로컬 캐시**: Caffeine, Guava (빠름, 분산 불가)
- **분산 캐시**: Redis, Memcached (확장성)
- **패턴**: Cache-Aside, Read/Write Through
- **일관성**: TTL, 이벤트 기반 무효화

#### 실무 예시
- 2단계 캐시: 로컬 + Redis
- Cache-Aside with 락: 캐시 스탬피드 방지

#### 면접 답변 예시
**1분**: "읽기 비율이 높은 데이터를 캐싱하고, TTL과 이벤트로 일관성을 관리합니다."

**3분**: "Cache-Aside가 가장 일반적입니다. 캐시 미스 시 DB 조회 후 캐시에 저장합니다. 동시 미스로 인한 스탬피드는 락 또는 Bloom Filter로 방지합니다. 쓰기가 많으면 Write-Behind로 비동기 저장합니다."

#### 꼬리 질문
- 캐시 스탬피드란?
- 캐시 워밍이란?

---

### Q94. 로깅 전략과 분석은?

#### A. 핵심 요약
구조화된 로그, 상관 ID, 중앙 집중화로 관찰성을 확보합니다.

#### 상세 설명
- **구조화 로그**: JSON 형식, 필드 기반 검색
- **상관 ID**: 분산 요청 추적
- **로그 레벨**: ERROR/WARN은 알림, DEBUG는 개발
- **중앙화**: ELK Stack, Loki

#### 실무 예시
- MDC(Mapped Diagnostic Context) 활용
- SLF4J + Logback 구성

#### 면접 답변 예시
**1분**: "JSON 형식의 구조화된 로그로 검색을 용이하게 하고, 상관 ID로 분산 추적합니다."

**3분**: "MDC에 traceId, userId를 저장하여 모든 로그에 포함시킵니다. Logstash로 수집하고 Elasticsearch에 저장, Kibana로 분석합니다. 로그 볼륨과 보관 기간을 고려한 비용 관리가 중요합니다."

#### 꼬리 질문
- MDC가 ThreadLocal 기반인데 비동기에서는?
- 로그 샘플링이란?

---

### Q95. 테스트 전략 (단위/통합/E2E)은?

#### A. 핵심 요약
테스트 피라미드에 따라 단위 > 통합 > E2E 순으로 비중을 둡니다.

#### 상세 설명
- **단위 테스트**: 격리된 함수/클래스 테스트, Mocking
- **통합 테스트**: DB, 외부 서비스 포함
- **E2E**: 전체 시스템 시나리오
- **TDD**: 테스트 먼저 작성

#### 실무 예시
- JUnit 5 + Mockito
- Testcontainers로 실제 DB 테스트

#### 면접 답변 예시
**1분**: "단위 테스트로 빠른 피드백, 통합 테스트로 연동 검증, E2E로 시나리오를 확인합니다."

**3분**: "단위 테스트는 빠르고 안정적이므로 가장 많이 작성합니다. 통합 테스트는 Testcontainers로 실제 DB를 사용하면 신뢰도가 높습니다. E2E는 비용이 크므로 핵심 시나리오만 테스트합니다."

#### 꼬리 질문
- Testcontainers란?
- 테스트 더블(Mock, Stub, Spy) 차이는?

---

### Q96. CI/CD 파이프라인 설계는?

#### A. 핵심 요약
빌드, 테스트, 분석, 배포를 자동화하여 빠른 피드백과 안정적 릴리스를 달성합니다.

#### 상세 설명
- **CI**: 커밋마다 빌드, 테스트, 정적 분석
- **CD**: 자동 배포, 카나리/블루그린
- **도구**: Jenkins, GitHub Actions, GitLab CI
- **품질 게이트**: 테스트 커버리지, SonarQube

#### 실무 예시
```yaml
# GitHub Actions
- run: ./gradlew build test
- run: docker build -t app:${{ github.sha }} .
- run: kubectl apply -f k8s/
```

#### 면접 답변 예시
**1분**: "커밋마다 자동으로 빌드, 테스트, 배포하여 빠른 피드백과 안정적 릴리스를 달성합니다."

**3분**: "PR마다 단위/통합 테스트, 코드 분석을 실행합니다. main 병합 시 스테이징 자동 배포, 프로덕션은 승인 후 배포합니다. 카나리 배포로 점진적 롤아웃하고, 메트릭 이상 시 자동 롤백합니다."

#### 꼬리 질문
- 블루그린 vs 카나리 배포 차이는?
- GitOps란?

---

### Q97. 이벤트 기반 아키텍처란?

#### A. 핵심 요약
서비스 간 이벤트로 통신하여 느슨한 결합과 확장성을 달성합니다.

#### 상세 설명
- **이벤트 브로커**: Kafka, RabbitMQ
- **패턴**: Pub/Sub, Event Sourcing, CQRS
- **장점**: 느슨한 결합, 비동기, 확장성
- **과제**: 순서 보장, 중복 처리, 추적

#### 실무 예시
- 주문 이벤트 → 결제, 재고, 알림 서비스
- Kafka + Spring Cloud Stream

#### 면접 답변 예시
**1분**: "이벤트로 서비스를 분리하여 느슨한 결합과 독립적 확장이 가능합니다."

**3분**: "동기 HTTP 대신 이벤트로 통신하면 서비스 장애가 전파되지 않습니다. Kafka는 순서와 내구성을 보장합니다. 멱등성과 중복 처리, 이벤트 스키마 진화를 설계해야 합니다."

#### 꼬리 질문
- Event Sourcing이란?
- CQRS란?

---

### Q98. 무중단 배포 전략은?

#### A. 핵심 요약
롤링, 블루그린, 카나리 중 선택하여 서비스 중단 없이 배포합니다.

#### 상세 설명
- **롤링**: 순차적으로 인스턴스 교체
- **블루그린**: 두 환경 전환
- **카나리**: 일부 트래픽으로 검증 후 확대
- **DB 마이그레이션**: 하위 호환 유지

#### 실무 예시
- Kubernetes Rolling Update
- Istio로 카나리 트래픽 분할

#### 면접 답변 예시
**1분**: "블루그린으로 빠른 롤백, 카나리로 점진적 검증이 가능합니다. 롤링은 리소스 효율적입니다."

**3분**: "DB 스키마 변경 시 하위 호환을 유지해야 합니다. 컬럼 추가 → 코드 배포 → 컬럼 삭제 순으로 단계적 마이그레이션합니다. 배포 자동화와 롤백 계획이 필수입니다."

#### 꼬리 질문
- Feature Flag란?
- DB 마이그레이션 하위 호환 전략은?

---

### Q99. 레거시 시스템 현대화 전략은?

#### A. 핵심 요약
교살자 패턴, 모듈화, 점진적 마이그레이션으로 리스크를 최소화합니다.

#### 상세 설명
- **교살자 패턴**: 새 시스템이 점진적으로 기능 대체
- **안티부패 계층**: 레거시와 신규 시스템 분리
- **모놀리스 분해**: 도메인 경계로 서비스 분리
- **데이터 마이그레이션**: 듀얼 라이트, 이벤트 소싱

#### 실무 예시
- API Gateway로 라우팅 분기
- CDC(Change Data Capture)로 데이터 동기화

#### 면접 답변 예시
**1분**: "교살자 패턴으로 점진적으로 기능을 이전하고, 안티부패 계층으로 레거시 영향을 격리합니다."

**3분**: "Big Bang 마이그레이션은 위험합니다. 먼저 테스트를 추가하고, 도메인 경계를 식별합니다. 한 기능씩 새 서비스로 이전하고, 프록시로 트래픽을 라우팅합니다. 데이터는 CDC로 실시간 동기화합니다."

#### 꼬리 질문
- 안티부패 계층(ACL)이란?
- CDC(Change Data Capture)란?

---

### Q100. Java 개발자의 역량 개발 방향은?

#### A. 핵심 요약
언어 깊이 + 아키텍처 + 클라우드 네이티브 + 소프트 스킬을 균형 있게 발전시킵니다.

#### 상세 설명
- **언어 깊이**: JVM 내부, 동시성, 신규 기능
- **아키텍처**: DDD, 마이크로서비스, 이벤트 기반
- **클라우드**: Kubernetes, 서버리스, IaC
- **소프트 스킬**: 커뮤니케이션, 멘토링, 기술 리더십

#### 실무 예시
- 오픈소스 기여
- 기술 블로그, 사내 발표
- 시스템 설계 연습

#### 면접 답변 예시
**1분**: "JVM과 동시성을 깊이 이해하고, 아키텍처와 클라우드 역량을 쌓으며, 기술 리더십을 개발합니다."

**3분**: "시니어로 성장하려면 문제 해결 능력과 기술 선택의 트레이드오프를 이해해야 합니다. 코드 리뷰와 멘토링으로 팀에 기여하고, 기술 부채와 비즈니스 가치를 균형 있게 판단하는 역량이 필요합니다."

#### 꼬리 질문
- 기술 부채 관리 방법은?
- 기술 의사결정 시 고려사항은?

---

## 학습 완료

> Java CS 문제 100개를 모두 학습하셨습니다. 꾸준한 복습과 실습으로 마스터하세요! 🎓
