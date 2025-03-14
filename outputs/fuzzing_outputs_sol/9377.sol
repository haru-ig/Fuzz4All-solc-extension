pragma solidity ^0.8.0;
contract MutatingFallback8 {
  function mutate(uint num1, uint num2, uint num3) public pure {}
}

pragma solidity ^0.8.0;
contract MutatingFallback9 {
  function mutate(uint num1, uint num2, uint num3) receive () public pure {}
}
