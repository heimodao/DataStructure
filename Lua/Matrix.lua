require("Util")

--��ƿ��� ��� �����ϱ�
--1. ������ �迭 (���̺��� �� ���Ұ� ���̺���)
--2. ���̺��� �ϳ�, ������ �ε��� ��Ҹ� �����ؼ� ��� (���� �ƴ� 1���� �迭�� 2���� ��� ����)

--��� 1)

function createMatrix(M, N)
  local matrix = {};
  for i = 1, M do
    matrix[i] = {};
    for j = 1, N do
      matrix[i][j] = 0;
    end
  end
  return matrix;
end

-- ��� 1�� �����ؼ� �Ϻλﰢ����� �����ϰ� ���� �� �ִ�
function createTMatrix(M)
  local matrix = {};
  for i = 1, M do
    matrix[i] = {};
    for j = 1, i do
      matrix[i][j] = 0;
    end
  end
  return matrix;
end



-- ��� 2)

function createMatrix2(M,N)
  local matrix = {};
  for i = 1, M do
    for j = 1, N do
      matrix[(i-1)*N + j] = 0;
    -- Ű�� ���ڿ��̶�� �Ʒ�ó�� ���ڿ� ������ ����ϴ� ������� ����
    --      matrix[ i .. " : " .. j] = 0;
    end
  end
  return matrix;
end


--�׸� ���̿� nil���� �ִ� ��� ���� �����ڸ� ����� �ݺ��� ��� �Ұ�
--pairs() ���
--��) Ư�� ����� Ư�� �࿡ ��� k�� ���ϱ�
function mult(matrix, rowidx, k)
  local row = matrix[rowidx];
  for i, v in pairs(row) do
    row[i] = v * k; 
  end
end



function main()
  local matrix = createMatrix(5,5);
  printTable(matrix);
  print("--------------------------")
  
  local matrix = createMatrix2(4,4);
  printTable(matrix)
  print("--------------------------")

  local matrix = createTMatrix(5);
  printTable(matrix);

end

main()

-- ���̺��� Ű�� ������ ������� ����
-- �˻� ���� ���� �� �ʿ��ϴٸ� ���� ����Ʈ�� ���� ��...
