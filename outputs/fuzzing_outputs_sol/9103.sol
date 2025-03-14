pragma solidity ^0.8.0;
contract Caller {
  function badCall(address target, uint i, bytes32[6] memory b) public returns (bool) {
    return true;
  }
  receive() external payable {}
}
