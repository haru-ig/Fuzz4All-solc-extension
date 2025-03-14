pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample10 {
  struct MixedContacts {
      uint256 _x;
      uint256 y;
  }
  constructor(MixedContacts memory y) {
    y.y = 1;
  }
  function main() public pure {
    y.y += 1;
  }
}
/* These cases can be detected automatically:

1.  Using a regular variable declaration inside a contract: { var x = 3; }
2.  A function declaration: { function () { x = 3; } }
3.  A function invocation: { 2 * (3 + 2) }
4.  A method declaration: { function () { y = 3; } }
5.  A method invocation: { 2 * (y + 2) }
6.  A function declaration inside the scope of a contract: { contract X { function() {} } }.
   This can be changed either to an empty function or using a contract statement.
7.  A function invocation inside the scope of a contract: { contract X { function() external {} } }.
   This can be changed either to an empty function or using a contract statement.
8.  A method declaration inside the scope of a contract: { contract X { function() external {} } } }.
   This can be changed either to an empty method or using a contract statement.
9.  A method invocation inside the scope of a contract: { contract X { function() external {} } }.
   This can be changed either to an empty method or using a contract statement.
10. A state variable declaration: { state uint public x; }
11. The use of a storage slot in a contract: { uint x; contract Y { function() { x = 333; } } }
12. A local variable declaration: { uint256 x; }
13. A local variable declaration inside a constructor function: { function() { uint256 y; y = 333; } } }
14. A local variable declaration inside a storage variable: { uint256[42] memory m; }
15. A function declaration inside a contract: { function f() public {} }.
   This can be changed either to an empty function or using a contract statement.
16. A constructor invocation inside a contract: { contract X { constructor () { x = 333; } } }.
   This can be changed either to an empty constructor or using a contract statement.
17. A modifier invocation: { require(0 < y < 2, "fail"); } } or { require(
