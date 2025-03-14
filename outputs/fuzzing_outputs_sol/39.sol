pragma solidity ^0.8.0;
contract SynchronousCallContract {
    fallback() external { emit CallerFallbackConstant(); }
}
