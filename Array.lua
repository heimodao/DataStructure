require("Util");

arr = {};
for i = 1, 1000 do
  arr[i] = 0;
end

print(#arr) --arr�� ����

print(arr[#arr + 1]) --nil

arr = {};

arr[-1] = -1;
arr[-2] = -2;
arr[0] = 0;
arr[1] = 1;
arr[2] = 2;
arr["p"] = "p";
arr.t = "t";


-- �۵�. Ű ���� �ƹ� Ÿ���� �ƹ� ���̳� �� �� �ֱ� ����
print(arr[-1]);

--���� �������δ� Ű�� ����� �͸� ã�� �� �ִ�
--��ƿ��� �迭 ������ 1������ �� �뼼. ��� ���̺귯���� �׷��� ������ ���� �����ڰ� �̿� ���� ������ ���̴� ��.
print(#arr);
print(table.maxn(arr));

--������ ����Ͽ� �ѹ��� �迭 ���� �� �ʱ�ȭ�� ����

array = {1, 3, 5, 7, 9, "11", arr, function() print("this is a function.")end };

print(array[0]);
print("length of array : " .. #array)


--for�� �����⿡���� ��� �ε����� �ִ� ���� ����


printTable(array)