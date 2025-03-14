pragma solidity ^0.8.0;
contract NoReturn {
  function nonReturnFallback() internal pure returns (bytes memory) {
    return bytes("");
  }
}
contract EtherFallback {
  function fallback(address, address, uint256) external pure { }
}
