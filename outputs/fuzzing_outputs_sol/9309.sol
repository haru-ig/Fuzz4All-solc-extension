pragma solidity ^0.8.0;
contract MemoryFallback {
  receive() public {}
}

pragma solidity ^0.8.0;
contract ReceiveFallback {
  receive() public payable {}
  fallback() external payable {}
}

pragma solidity ^0.8.0;
contract FallbackReceiver {
  receive() external payable {}
  fallback() public {}
}
