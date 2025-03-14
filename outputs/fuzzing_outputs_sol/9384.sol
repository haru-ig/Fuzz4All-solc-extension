pragma solidity ^0.8.0;
contract MutatingFallback5 {
  function mutate(uint num1) public pure {
    require(num1 >= 100);
    {
      revert(2);
      num1 = 200;
    }
  }
}
