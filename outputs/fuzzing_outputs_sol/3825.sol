pragma solidity ^0.8.0;
contract Example20 {
    function __fallback() public pure returns (bytes4 dataWithFallback) {
        return bytes4(0);
    }
}
