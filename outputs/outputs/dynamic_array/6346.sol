pragma solidity ^0.8.0;
contract c {
  uint8 x[];
  function f() public {
    x.push(1);
    x.push(2);
    x.push(3);
  }
}
