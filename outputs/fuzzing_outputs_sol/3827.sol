pragma solidity ^0.8.0;
contract Example20 {
    function __fallback() public pure returns (bytes memory dataWithFallback) {
        bytes memory emptyBytes = new bytes(0);
        return emptyBytes;
    }
}
