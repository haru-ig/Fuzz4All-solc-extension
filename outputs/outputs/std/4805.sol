pragma solidity ^0.8.0;
contract H {
  uint public x;
  uint public y;
  function h() private {}
  function test2() public pure {}
}
contract H {
  uint public x;
  uint public y;
  function h() public {}
  function test2() private {}
}
contract H {
  uint public x;
  uint public y;
  function h() public view {}
  function test2() public pure {}
}
contract A {
  function f() public { }
  function g() public pure { }
}
