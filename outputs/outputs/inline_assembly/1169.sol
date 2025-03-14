pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedLogCaller {
  bytes32 X;
  address target;
  constructor(address _target) public {
    X = bytes32(uint256(blockhash(block.number - 1)));
  }
  function modify(string calldata x) public {
    target = msg.sender;
  }
  function _calculate() public pure returns (bytes32) {
    return bytes32(uint256(keccak256(blockhash(block.number))));
  }
}
