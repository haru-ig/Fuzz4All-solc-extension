pragma solidity ^0.8.0;
contract Caller {
  function callContractWithFallbackExample() returns(uint256) {
    return CallContractWithFallbackExample().callContractWithFallbackContractAddress(address(this), abi.encode(""));
  }
}
