pragma solidity ^0.8.0;
contract C {
  struct C1 {};
  C1 public x;
  constructor() public {
    MinterInterface(msg.sender).mint();
    x = C1(msg.sender);
  }
  function f() public view returns (MinterInterface) {
    return MinterInterface(msg.sender);
  }
  function g() public view returns (MinterInterface) {
    return f().mint();
  }
  function g() public {
    x = x;
    (msg.sender).transfer(uint(x));
  }
}
