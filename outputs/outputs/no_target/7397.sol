pragma solidity ^0.8.0;
contract Test {
  uint[] array;
  function foo() public pure {
    array.push(0xfffffffffffffffffffffff);
    array.push(4);
  }
}
