pragma solidity ^0.8.0;
contract TestPrecompiled45395 {
 bytes1 array;
}

pragma solidity ^0.8.0;
abstract contract TestPrecompiled45396 {
 function local1() returns (uint x) {}
}

pragma solidity ^0.8.0;
contract TestPrecompiled45397 is TestPrecompiled45396 {
 function test(uint a) {
  delegateCall();
  delegateCall2();
 }
 function delegateCall() onlyOwner public {
 bytes1[] memory tempStorageX;
  assembly {
   calldatacopy(0x40,0x20,calldatasize)
   sstore(add(0x20,0x40),0x30)
 }
 bytes1[0] memory tempStorageX;
  assembly {
  tempStorageX := mload(0x20)
  }
 mload(0x30) = tempStorageX;
 function delegateCall2() public {
 bytes1[] memory tempStorageX;
  assembly {
   calldatacopy(0x40,0x20,calldatasize)
   sstore(add(0x20,0x40),0x30)
 }
 function() calldata {
  delegateCall();
  delegateCall2();
 }
 bytes1[0] memory tempStorageX;
  assembly {
  tempStorageX := mload(0x20)
  }
 deleteTempStack(0x20)
 mstore(0x30,tempStorageX)
 mstore(0x40,0x20)
 mstore(0x50,0x5)
 mstore(0x60,0xa)
 mstore(0x70,0xf)
 mstore(0x80,0x15)
 mstore(0x90,0x1a)
 }
 bytes1[0] memory tempStorageX;
  assembly {
  tempStorageX := mload(0x20)
  }
 deleteTempStack(0x20)
 mstore(0x30,tempStorageX)
 mstore(0x40,0x20)
 mstore(0x50,0xe)
 mstore(0x60,0x11)
 mstore(0x70,0x16)
 mstore(0x80,0x1b)
 mstore(0x90,0x20)
 }
 bytes1[0] memory tempStorageX;
  assembly {
  tempStorageX := mload(0x20)
  }
 deleteTempStack(0x20)
 mstore(0x30,tempStorageX)
 mstore(0x40,0x20)
 mstore(0
