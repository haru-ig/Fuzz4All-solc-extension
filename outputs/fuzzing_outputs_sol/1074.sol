pragma solidity ^0.8.0;
contract MutatedFallback {
    uint256 count = 0;
    uint constant value = 1;
    function fallback(uint256) public {
        count += 1;
    }
    receive() external {
    }
}
