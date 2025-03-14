pragma solidity ^0.8.0;
contract SimpleDifferentMut

{
  mapping (string => int) data;

  struct MyStruct
  {
    uint myData;
    uint myData2;
  }

  function save(uint id) public {
    data[""] = id;
  }

  function doIt() public {
    data[""] = 0;
    data[""] += 1;
    data["1"] += 1;
    data["1"] += 1;
    data["1"] += 1;
    data["1"] += 2;
    load(1);
    save2(1, 2);
  }

  function load(uint id) public {
    data["1"] = 0;
    data[""] += 1;
    data["1"] += 2;
    data["1"] += 1;
    data["1"] += 1;
    data[""] -= 2;
    data[""] -= 1;
  }

  function save2(uint id) public {
    uint i;
    for (i=2; i<=id; i++){
      data[""] = 0;
    }
  }

  function delete(uint id) public {
    for (uint i=2; i<=id; i++){
      delete data["1"];
    }
  }
  event Het(uint doo);
}
contract S30Sample
{
    SimpleDifferentMut singleClassMut;
    function doIt() public {
        singleClassMut.doIt();
    }
}
/* Please create a
