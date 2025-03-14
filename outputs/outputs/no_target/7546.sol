pragma solidity ^0.8.0;
contract Solidity080A {
  function a(uint j) public virtual returns (uint k) {
    assembly {
      mstore(0x40, j)
      mstore(0x48, k)
      return(0x00000000000000000000000000000000000001)
    }
  }
}
contract Solidity080B {
  function b(uint j) public virtual returns (uint k) {
    return add(a(j), 1);
  }
}
