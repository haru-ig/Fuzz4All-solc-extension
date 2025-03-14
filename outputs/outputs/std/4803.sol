pragma solidity ^0.8.0;
contract A {
  uint public x;
  uint public y;
  bytes2 public z;
}

pragma solidity ^0.8.0;
library Library {
  struct A {
    uint x;
    uint y;
    bool a;
  }
  struct B {
    uint32 x;
    uint32 y;
  }
  function a() public pure returns (A memory a);
  function b() public pure returns (B memory b) {}
}
contract C is A, Library {
  function z() public view returns(bytes memory memory) {}
 }
