pragma solidity ^0.8.0;
import './SemanticEquivalent.sol';
contract PayableFallback { address private _fallbackAddr; constructor(address _fallbackAddr) {_fallbackAddr = _fallbackAddr;} function() external payable { _fallbackAddr.call{value: uint(msg.value)()}(""); } fallback() external payable { if (true) { _fallbackAddr.call{value: uint(0)}(""); } } receive() externalPayable { } }
