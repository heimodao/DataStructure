require("Util")

--루아에서 행렬 구현하기
--1. 이차원 배열 (테이블의 각 원소가 테이블임)
--2. 테이블은 하나, 복수의 인덱스 요소를 조합해서 사용 (익히 아는 1차원 배열로 2차원 행렬 쓰기)

--방법 1)

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

-- 방법 1을 응용해서 하부삼각행렬을 간단하게 만들 수 있다
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



-- 방법 2)

function createMatrix2(M,N)
  local matrix = {};
  for i = 1, M do
    for j = 1, N do
      matrix[(i-1)*N + j] = 0;
    -- 키가 문자열이라면 아래처럼 문자열 조합을 사용하는 방식으로 응용
    --      matrix[ i .. " : " .. j] = 0;
    end
  end
  return matrix;
end


--항목 사이에 nil값이 있는 경우 길이 연산자를 사용한 반복문 사용 불가
--pairs() 사용
--예) 특정 행렬의 특정 행에 상수 k를 곱하기
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

-- 테이블에서 키의 순서는 보장되지 않음
-- 검색 순서 같은 게 필요하다면 연결 리스트나 쓰는 게...
