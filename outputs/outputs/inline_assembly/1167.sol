pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract NoviceLogCaller {
  bytes32 constant OH = '0102110';
  bytes32 oh;
  bytes32 what;
  constructor(address target) public {
    oh = OH;
  }
  function modify(bytes32 what) public {
       oh = what;
      what;
    what;
  }
  function _calculate() public pure returns (bytes memory){
    return memory(0, 0, 0);
  }
  function () public payable pure returns (address, bytesmemory, bytes32){
    return (msg.sender, memory(0, 0, 0), memory(0));
  }
}
