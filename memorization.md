# 🎯 기술면접 암기 노트

> 개발자 기술면접을 위한 핵심 암기 내용 (데이터베이스 & 운영체제 중심)

---

## 📊 데이터베이스 핵심 암기

### ACID 원칙 ⭐⭐⭐
```
A - Atomicity (원자성): 모두 성공 또는 모두 실패
C - Consistency (일관성): 트랜잭션 전후 DB는 일관된 상태
I - Isolation (격리성): 동시 실행 트랜잭션은 서로 영향 없음
D - Durability (지속성): 완료된 트랜잭션은 영구 반영
```

### 격리 수준 (Isolation Level) ⭐⭐⭐
```
READ UNCOMMITTED (레벨 0)
  - Dirty Read 발생 가능
  - 커밋 안된 데이터 읽기 가능

READ COMMITTED (레벨 1) ← PostgreSQL 기본
  - Dirty Read 방지
  - Non-Repeatable Read 발생 가능

REPEATABLE READ (레벨 2) ← MySQL InnoDB 기본
  - Non-Repeatable Read 방지
  - Phantom Read 발생 가능

SERIALIZABLE (레벨 3)
  - 완전 격리. 모든 문제 방지
  - 성능 최저
```

**3가지 Read 문제**
- **Dirty Read**: 커밋 안된 데이터를 읽음
- **Non-Repeatable Read**: 같은 행을 두 번 읽었을 때 값이 다름
- **Phantom Read**: 같은 쿼리 두 번 실행했을 때 새로운 행이 나타남

### 인덱스 ⭐⭐⭐
```
B-Tree 인덱스 (균형 트리)
  - RDBMS 기본 인덱스
  - 범위 검색, 정렬에 유리
  - 시간복잡도: O(log N)

Hash 인덱스
  - 등호(=) 검색에 빠름
  - 범위 검색 불가
  - 시간복잡도: O(1)

클러스터 인덱스
  - 데이터가 물리적으로 정렬됨
  - 테이블당 1개만 가능
  - PK에 자동 생성

논클러스터 인덱스
  - 별도의 인덱스 구조
  - 여러 개 생성 가능
```

### 정규화 ⭐⭐
```
1NF (제1정규화): 원자값만 포함 (반복 그룹 제거)
2NF (제2정규화): 부분 함수 종속 제거
3NF (제3정규화): 이행 함수 종속 제거
BCNF: 모든 결정자가 후보키
```

### MVCC (Multi-Version Concurrency Control) ⭐⭐
```
- 읽기/쓰기 충돌 방지를 위해 여러 버전의 데이터 유지
- PostgreSQL, MySQL InnoDB에서 사용
- 읽기는 락 없이 진행 가능 (스냅샷 읽기)
- Undo Log를 사용하여 이전 버전 관리
```

### 락(Lock) 종류 ⭐⭐
```
공유 락 (Shared Lock, S-Lock)
  - 읽기 전용
  - 여러 트랜잭션이 동시 획득 가능

배타 락 (Exclusive Lock, X-Lock)
  - 쓰기 전용
  - 하나의 트랜잭션만 획득 가능

Gap Lock
  - 범위 내 존재하지 않는 행에 대한 락
  - Phantom Read 방지

Next-Key Lock
  - 레코드 락 + Gap 락
  - InnoDB 기본 락
```

### 샤딩 vs 레플리케이션 ⭐⭐
```
샤딩 (Sharding)
  - 데이터를 여러 DB에 수평 분할
  - 쓰기 성능 향상
  - 종류: Hash-Based, Range-Based

레플리케이션 (Replication)
  - 데이터를 여러 DB에 복제
  - 읽기 성능 향상
  - Master-Slave, Master-Master
```

### CAP 정리 ⭐⭐⭐
```
C - Consistency (일관성)
A - Availability (가용성)
P - Partition Tolerance (분할 내성)

→ 3가지 중 2가지만 만족 가능

CA: 전통적 RDBMS (MySQL, PostgreSQL)
CP: MongoDB, HBase
AP: Cassandra, DynamoDB
```

### 캐시 문제 패턴 ⭐⭐
```
Cache Stampede (캐시 스탬피드)
  - 인기 캐시 만료 시 동시 다발 DB 조회
  - 해결: Mutex, 확률적 조기 만료, 백그라운드 갱신

Cache Penetration (캐시 관통)
  - 존재하지 않는 데이터 반복 조회
  - 해결: Null 캐싱, Bloom Filter

Cache Avalanche (캐시 눈사태)
  - 대량 캐시 동시 만료로 DB 폭증
  - 해결: TTL 랜덤화
```

### 데이터베이스 로그 ⭐⭐
```
WAL (Write-Ahead Logging)
  - 데이터 변경 전 로그를 먼저 기록
  - 장애 복구 보장

Redo Log
  - 커밋된 트랜잭션 재실행하여 복구

Undo Log
  - 커밋 안된 트랜잭션 롤백

Binary Log (Binlog)
  - 모든 변경 사항 기록
  - 복제와 복구에 사용
```

---

## 🖥️ 운영체제 핵심 암기

### 프로세스 vs 스레드 ⭐⭐⭐
```
프로세스
  - 독립된 메모리 공간 (코드, 데이터, 힙, 스택)
  - 안전하지만 무겁고 느림
  - IPC 필요 (파이프, 메시지 큐, 공유 메모리)
  - Context Switching 비용 높음

스레드
  - 프로세스 내 실행 단위
  - 코드, 데이터, 힙 공유 / 스택만 독립
  - 가볍고 빠름
  - 동기화 필요 (Mutex, Semaphore)
  - Context Switching 비용 낮음
```

### CPU 스케줄링 알고리즘 ⭐⭐
```
FCFS (First-Come First-Served)
  - 선입선출, 비선점형
  - Convoy Effect 발생 가능

SJF (Shortest Job First)
  - 짧은 작업 우선
  - Starvation 가능

Round Robin
  - 시간 할당량(Time Quantum)
  - 선점형, 공평함

Priority Scheduling
  - 우선순위 기반
  - Aging으로 Starvation 방지

Multi-Level Queue
  - 여러 큐를 우선순위별로 관리
```

### 동기화 ⭐⭐⭐
```
Critical Section (임계 영역)
  - 동시 접근하면 안 되는 공유 자원 영역

Race Condition (경쟁 상태)
  - 여러 프로세스가 동시 접근하여 문제 발생

Mutex (뮤텍스)
  - 한 번에 하나의 스레드만 접근
  - Binary Semaphore

Semaphore (세마포어)
  - 카운터 기반
  - N개까지 접근 허용

Deadlock (데드락)
  - 서로의 자원을 기다리며 무한 대기
  - 4가지 필요조건:
    1. 상호 배제 (Mutual Exclusion)
    2. 점유와 대기 (Hold and Wait)
    3. 비선점 (No Preemption)
    4. 순환 대기 (Circular Wait)
```

### 메모리 관리 ⭐⭐⭐
```
가상 메모리 (Virtual Memory)
  - 물리 메모리보다 큰 메모리 사용 가능
  - 프로세스 격리

페이징 (Paging)
  - 고정 크기(4KB) 페이지 단위 관리
  - 외부 단편화 없음
  - 내부 단편화 발생 가능

세그멘테이션 (Segmentation)
  - 논리적 단위(코드, 데이터, 스택)
  - 외부 단편화 발생 가능

페이지 교체 알고리즘
  - FIFO: 선입선출
  - LRU: 최근 최소 사용
  - LFU: 최저 빈도 사용
  - Clock: LRU 근사 알고리즘
```

### Page Fault ⭐⭐
```
페이지 폴트
  - 필요한 페이지가 메모리에 없을 때 발생
  - 처리 과정:
    1. 페이지 테이블 확인
    2. 디스크에서 페이지 로드
    3. 페이지 테이블 갱신
    4. 명령어 재실행

Thrashing (스래싱)
  - 페이지 폴트가 과도하게 발생
  - CPU 이용률 급격히 저하
  - Working Set 알고리즘으로 방지
```

### Context Switching ⭐⭐
```
컨텍스트 스위칭
  - CPU가 현재 프로세스에서 다른 프로세스로 전환
  - 과정:
    1. 현재 프로세스 상태 저장 (PCB에)
    2. 다음 프로세스 상태 복원
  - 오버헤드 발생 (캐시 무효화)
  - 스레드 스위칭이 프로세스보다 빠름
```

### IPC (Inter-Process Communication) ⭐⭐
```
파이프 (Pipe)
  - 단방향 통신
  - 부모-자식 프로세스 간

메시지 큐 (Message Queue)
  - 양방향 통신 가능
  - 메시지 단위 전송

공유 메모리 (Shared Memory)
  - 가장 빠름
  - 동기화 필요

소켓 (Socket)
  - 네트워크 통신
  - 서로 다른 호스트 간 가능
```

### 가비지 컬렉션 (GC) ⭐⭐⭐
```
Generational GC 구조
  Young Generation
    - Eden: 객체 최초 할당
    - Survivor (S0, S1): Eden에서 살아남은 객체
  Old Generation
    - Young에서 오래 살아남은 객체

GC 종류
  Minor GC: Young Generation (빠르고 빈번)
  Major GC (Full GC): Old Generation 포함 (느리고 STW 김)

주요 GC 구현
  G1 GC
    - Heap을 Region으로 분할
    - 예측 가능한 STW 시간
    - Java 9+ 기본

  ZGC
    - TB급 힙에서 <10ms STW
    - Colored Pointers 사용

  CMS (deprecated)
    - Concurrent Mark Sweep
    - 낮은 지연 시간
```

### 동시성 심화 문제 ⭐⭐
```
Cache Stampede (캐시 스탬피드)
  - 캐시 만료 시 동시 다발 요청
  - 해결: Mutex, 확률적 조기 만료

ABA Problem
  - A→B→A로 값 변경 시 감지 못함
  - 해결: Version Number

Double-Checked Locking
  - 싱글톤 패턴 최적화
  - volatile 필요 (메모리 재배치 방지)

Happens-Before
  - 메모리 연산 가시성 순서 관계
  - Java Memory Model 핵심

Lock Contention
  - 여러 스레드가 동일 락 경쟁
  - 해결: Lock-free 알고리즘, 락 분할
```

### NUMA vs UMA ⭐
```
UMA (Uniform Memory Access)
  - 모든 CPU가 메모리에 균일한 속도로 접근

NUMA (Non-Uniform Memory Access)
  - CPU마다 가까운/먼 메모리 존재
  - 지역 메모리 접근이 빠름
  - 대규모 서버에서 사용
```

---

## 🔥 면접 빈출 비교 질문

### 프로세스 vs 스레드
```
프로세스: 독립 메모리, 안전, 무거움, IPC 필요
스레드: 메모리 공유, 가벼움, 동기화 필요, 오류 전파
```

### Stack vs Heap
```
Stack
  - 컴파일 타임에 크기 결정
  - 지역 변수, 매개변수
  - 자동 할당/해제
  - LIFO
  - 빠름

Heap
  - 런타임에 동적 할당
  - 객체, 배열
  - 수동 관리 (GC)
  - 느림
```

### 페이징 vs 세그멘테이션
```
페이징: 고정 크기, 내부 단편화
세그멘테이션: 가변 크기, 외부 단편화
```

### B-Tree vs Hash Index
```
B-Tree: 범위 검색, 정렬, O(log N)
Hash: 등호 검색, O(1), 범위 불가
```

### Mutex vs Semaphore
```
Mutex: Binary, 1개만 접근
Semaphore: Counter, N개 접근 가능
```

### Optimistic vs Pessimistic Lock
```
Optimistic: 충돌 드물다 가정, 커밋 시 검증
Pessimistic: 충돌 가능성 높다 가정, 미리 락
```

### RAID 레벨 ⭐
```
RAID 0: Striping, 성능↑, 안정성↓
RAID 1: Mirroring, 안정성↑, 용량 1/2
RAID 5: Parity, 최소 3개 디스크
RAID 10: 1+0, 성능+안정성 (비쌈)
```

---

## 💡 암기 팁

### 숫자 암기
```
TCP 헤더: 20 Bytes
UDP 헤더: 8 Bytes
IPv4 주소: 32 bits
IPv6 주소: 128 bits
이더넷 MTU: 1500 Bytes
기본 페이지 크기: 4KB
Huge Page: 2MB, 1GB
캐시 라인: 64 Bytes (일반적)
```

### 포트 번호
```
HTTP: 80
HTTPS: 443
SSH: 22
FTP: 21
MySQL: 3306
PostgreSQL: 5432
Redis: 6379
MongoDB: 27017
```

### 시간복잡도
```
O(1): Hash 탐색
O(log N): B-Tree 탐색, Binary Search
O(N): Linear Search
O(N log N): Merge Sort, Quick Sort (평균)
O(N²): Bubble Sort, Selection Sort
```

---

## 🎓 면접 답변 템플릿

### 1분 답변 구조
```
1. 핵심 정의 (1문장)
2. 주요 특징 2-3가지
3. 실무 예시 1가지
```

### 3분 답변 구조
```
1. 핵심 정의
2. 상세 설명 (동작 원리)
3. 장단점 비교
4. 실무 사용 사례
5. 관련 기술/대안
```

### 모르는 질문 대응
```
"정확히 기억나지 않지만, 제가 이해한 바로는..."
"유사한 개념인 XXX와 비교하면..."
"실무에서는 이렇게 사용했습니다..."
```

---

**마지막 업데이트**: 2026-03-06
**용도**: 기술면접 대비 암기 노트
**출처**: CS 학습 문제은행 프로젝트
