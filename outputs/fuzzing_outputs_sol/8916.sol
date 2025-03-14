pragma solidity ^0.8.0;
contract ContractWithFallbackSemanticallyEquivalent {
  receive() external payable {}
  assembly {
    let x := mload(0x40)
    calldatacopy(x+0x4, 0x20, 0x8000)
    let ptr := mload(x + 0x8)
    calldatacopy(x+0x80, 0x8000, 0x8000)
    var a := mload(ptr)
    returndatacopy(a, 0x40, 0x8000)
    return(a)
  }
}
