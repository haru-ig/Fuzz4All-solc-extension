pragma solidity ^0.8.0;
contract Mutated {
  function mutate() payable pure public {
    assembly {


      sstore(0x555555, sub(0x555555, 0xffffffffffffffff), 0x7fffffffffffffff)
    }
  }
}
contract Caller {
  function callNonFallbackContract() payable public returns (address){
    return address(uint160(uint64(msg.data)))
  }
  function callFallbackContract2() payable public fallback() {
    assembly {
      mstore(add(calldatacopy(0,0), 4), return(0));
      mstore(add(calldatacopy(8, 0), 7), return(0));
      mstore(calldatacopy(add(calldatacopy(0, 0), 8), 0x7FFFFFFF), 0x0);
      let returnData := dynCall(0x555555,0,calldataload(add(calldatacopy(0, 0), 8)),calldataload(add(calldatacopy(0, 0), 7)),returndatacopy(add(calldatacopy(0, 0), 4),0x7FFFFFFF));

      sstore(0x555555, add(0x555555, 0xffffffffffffffff), returnData)
      revert(returnData)
    }
  }
  receive () payable public { }
}
