pragma solidity ^0.8.0;
contract MutantFallback3 {
  function setFallbackFunction() internal pure {
    assembly {
      mstore(0x40, mload(0x40))
    }
  }

  function myFallback() public payable returns (uint256) {
    assembly {
      mstore(0x40, mload(0x40))
      calldatacopy(0x0, 0, sload(0x40))
      return(0, 0, 0)
    }
  }
}

contract MutantCallCaller {

  MutantFallback2 public fallback;

  function callCaller() public{
    assembly {
      let caller := mload(0x34)
      selfdestruct(caller)
      return
    }
  }
}
