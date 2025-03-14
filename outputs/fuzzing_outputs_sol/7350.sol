pragma solidity ^0.8.0;
contract LowCostFallback {
    bytes32 public _fallback;

    function setFallback(bytes32 _fallback) external {
        _fallback = _fallback;
    }
}
