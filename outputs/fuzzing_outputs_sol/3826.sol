pragma solidity ^0.8.0;
contract Example30 {
    function __fallback() public pure returns (uint256 dataWithFallback) {
        dataWithFallback=1234;
        return dataWithFallback;
    }
}
