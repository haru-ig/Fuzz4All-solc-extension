pragma solidity ^0.8.0;

contract MutatingFallback4 {
  function modify() external {

    uint num1 = 123;
    uint num2 = 456;
    uint num3 = 789;


    MutatingFallback.modify(num1, num2, num3);
  }
}

pragma solidity ^0.8.0;
