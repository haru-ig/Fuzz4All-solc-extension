pragma solidity ^0.8.0;
contract Caller {
  uint i = 0;
  receive() external payable {}
  function caller() external {
    i = i + 1;
    uint a = i;
    a = 15;
    a = a - 18;
    a = a + 100;
  }
  function call1() external {
    uint b = i;
    b = 15;
    b = b + 98;
    b = 100;
    b = b - 18;
    b = b + 15;
    b = b + 9;
    b = b + 15;
    b = b - 9;
    b = b + 1;
    b = b + i;
    b = b - 30;
    b = b + 48;
    b = b + 93;
  }
}
