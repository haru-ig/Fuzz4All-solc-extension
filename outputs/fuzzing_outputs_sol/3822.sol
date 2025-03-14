pragma solidity ^0.8.0;
contract Example20 {
    function __fallback() public pure returns (bytes memory dataWithFallback) {
        return new bytes(0);
    }
}
