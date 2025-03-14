pragma solidity ^0.8.0;
interface InterfaceWithFallback {
  receive() external payable {}
  fallback() external payable {}
}


pragma solidity ^0.8.0;
contract ContractWithLowLevelFallback {
  receive() internal payable {}
  fallback() internal payable {}
}
