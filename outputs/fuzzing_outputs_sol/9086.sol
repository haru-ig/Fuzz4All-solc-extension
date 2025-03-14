pragma solidity ^0.8.0;
contract FirstFallback {
  receive () payable pure public returns (bytes memory) {
    return new bytes(0);
  }
  pure function modify2(uint256, uint256, uint256, uint256) public pure returns (bytes memory) {
    return new bytes(0);
  }
}
