pragma solidity ^0.8.0;
interface EtherFallback {
  function fallback(address, address, uint256) external pure;
}
