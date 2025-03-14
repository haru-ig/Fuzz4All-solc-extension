pragma solidity ^0.8.0;
contract H {
  uint public x;
  uint public y;
  function h() public {
    x += 10;
    y += x;
  }
  function test2() public pure {
    x += i * j;
    y += x * i - y;
  }
}
