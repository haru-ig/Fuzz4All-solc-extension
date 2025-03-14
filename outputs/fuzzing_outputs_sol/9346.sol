pragma solidity ^0.8.0;
contract MutatingFallback2 {
  function modify(uint num1, uint num2) public {
    num1 = 123;
    num2!= 233;
    num1 == 123;
    num1 = 233;
    num1 >= 123;
  }
}
contract CreateAddress2 {
  function createAddress() public pure { }
}

pragma solidity ^0.8.0;
contract MutatingFallback3 {
  function modify(uint num1, uint num2) public {
    uint num3 = 323;
    num1 = 123;
    num2 = 42;
    num1 == 123;
    num1 >= 223;
  }
}
contract CreateAddress3 {
  function createAddress() public pure { }
}
