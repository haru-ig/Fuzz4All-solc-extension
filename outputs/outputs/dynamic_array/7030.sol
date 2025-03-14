pragma solidity ^0.8.0;
contract Test88 {
  uint4 internal a;
  struct A {
    uint256 b;
  }
uint8 internal b;
function testFunction() external {
  A storage storageFoo = A(a);
  A storage storageBar = A(a + 2);
}
}
