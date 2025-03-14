pragma solidity ^0.8.0;
contract MutatingFallback7 {
  function mutate(uint num1, uint num2, uint num3) public {
    if (true) {
      num3 = 3;


    }
    num1 = 3;
    num2 = 3;
    num3 = 3;

  }
}
