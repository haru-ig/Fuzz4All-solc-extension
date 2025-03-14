pragma solidity ^0.8.0;
contract D1 {
  event Bar(int v1);
  function bar(uint8 v2) public {
    emit Bar(0);
  }
}
contract Caller1 {
  constructor() public {
    D1(0x75757575).bar(0x0);
    call(abi.encodeWithSignature("bar(uint8(10))"));
  }
  function call(bytes memory callData) private {
    asm
    {
      let ptr := mload(callData)
      let offset := ptr-0x41
      let functionselector := and(mload(add(ptr, offset)), 0xffffff00)

      let functionid := byte(functionselector, 7, 5)
      let functionlen := byte(functionselector, 4, 6)
      let functionptr := ptr
      let contract := mload(add(ptr, 0x41))
      let selector := add(0x51, functionid*0x04)

      let stacksize := add(40, sub(mload(ptr), 0x51))

      let function := calldatacopy(ptr, functionptr, functionlen)

      functionselector := and(functionselector, 0x3f)

      push(contract)                    / 0x01(0x51) push(contract)
      mstore(ptr, functionselector)    / 0x05(0x55) mstore(ptr, functionselector)
      mstore(ptr, functionid)        / 0x09(0x59) mstore(ptr, functionid)
      mstore8(ptr, functionlen)    / 0x0d(0x5d) mstore8(ptr, functionlen)
      sub(ptr, stacksize)            / 0x11(0x61) sub(ptr, stacksize)
      return(functionselector)           / 0x13(0x63) return(functionselector) 0x51

    }
  }
}
