pragma solidity ^0.8.0;
contract C43_bug427547354023 {
  function f() public pure{
    assembly {
      sstore(10,add(100,0x1398ac7e))
    }
  }
}
