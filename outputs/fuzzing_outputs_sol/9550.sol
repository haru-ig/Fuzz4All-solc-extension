pragma solidity ^0.8.0;
contract Bar {
    uint constant MAX = 100;
    uint result  = MAX;
    function f() public pure {
      address contractAddress = this;
      address storageAddress = contractAddress;
      contractAddress.call(abi.encodeWithSignature("function() external view returns (uint)", 100));
      uint i = result;
      result  = i.add(100);
    }
    function call() public pure {
    uint count = 20;
    for (uint i = 0; i<count; i++){
      uint val = MAX;
       uint add = val.add(1);
    }
   }
}
