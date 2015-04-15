require("Util");

function createList(value, next)
  local list = {};
  list.value = value;
  if type(next) ~= "table" then
    print("argument 'next' is not a table");
  end
  list.next = next or nil;
  return list;
end


list1 = createList(1,0);

printTable(list1);
