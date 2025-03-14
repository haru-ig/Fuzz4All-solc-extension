pragma solidity ^0.8.0;

contract NonReturningFallback {
  fallback().sendValue(tx.origin, 0) internal {}
}
