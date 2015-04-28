require("Util");

arr = {};
for i = 1, 1000 do
  arr[i] = 0;
end

print(#arr) --arr의 길이

print(arr[#arr + 1]) --nil

arr = {};

arr[-1] = -1;
arr[-2] = -2;
arr[0] = 0;
arr[1] = 1;
arr[2] = 2;
arr["p"] = "p";
arr.t = "t";


-- 작동. 키 값은 아무 타입의 아무 값이나 쓸 수 있기 때문
print(arr[-1]);

--길이 연산으로는 키가 양수인 것만 찾을 수 있다
--루아에서 배열 시작은 1부터인 게 대세. 루아 라이브러리도 그렇기 때문에 길이 연산자가 이와 같은 동작을 보이는 것.
print(#arr);
print(table.maxn(arr));

--생성자 사용하여 한번에 배열 생성 및 초기화가 가능

array = {1, 3, 5, 7, 9, "11", arr, function() print("this is a function.")end };

print(array[0]);
print("length of array : " .. #array)


--for문 돌리기에서도 양수 인덱스에 있는 값만 나옴


printTable(array)