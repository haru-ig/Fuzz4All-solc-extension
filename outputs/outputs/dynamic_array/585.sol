pragma solidity ^0.8.0;
struct testStruct {
  bool public field1;
}
contract test1 {
  testStruct public a2;
  function test() public {
    a2.field1 = true;
  }
}

pragma solidity ^0.8.0;
contract test2 {
  struct testStruct {
    bool public field1;
  }
  testStruct public a2;
  function test() public {
    a2.field1 = true;
  }
}


pragma solidity ^0.8.0;
contract testContract2 {
  uint256[] public num1;
  uint256[] public num2;

  function test() public {
    num1[1] = 1;
  }
}
