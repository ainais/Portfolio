array = [3,5,1,2,4] # 5개의 데이터 N = 5
summary = 0         # 합계를 저장할 변수

# 1번 유형 : for문을 이용한 array의 총합
# 이 경우에 시간 복잡도를 O(N) 이라고 표기한다.
for x in array:
    summary += x
print(summary)
print("==========")

# 2번 유형 : 단순 연산
# 이 경우에 상수 연산이므로 시간 복잡도는 O(1) 이라고 표기한다.
a = 5
b = 7
print(a+b)
print("==========")

# 3번 유형
# 이 경우 O(N^2) 의 시간 복잡도를 가진다. 다만 퀵정렬을 이용하면 O(N*logN)으로 줄일 수 있다.
array = [3,5,1,2,4] # 5개의 데이터 N = 5
for i in array:
    for j in array:
        temp = i*j
        print(temp)