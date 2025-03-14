pragma solidity ^0.8.0;
contract MutatedSemanticFallback {
  bytes32 public fallback = 0x209bfca2a0e78566dfea2a8ce1b0d4b1aede9148d05df7cb30951490d79405f9;
  function execute() public pure {
    (bool, bytes memory) eqResult = bytes32(fallback == 0x209bfca2a0e78566dfea2a8ce1b0d4b1aede9148d05df7cb30951490d79405f9)
      ||
      (bool, bytes memory) eqResult = bytes32(fallback == 0x2fbca2a0e78566dfea2a8ce1b0d4b1aede9148d05df7cb3095148cf7bd04);
    (bool, bytes memory) eqResult2
    =
    (true, bytes memory(0));
  }
}
