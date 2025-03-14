pragma solidity ^0.8.0;
contract Caller {
    function lowLevelFallback(uint256 amount) public returns (uint256) {
        this.lowLevelFallback(amount);
    }
    receive () payable {}
}

library CallerFallback {
    function lowLevelFallbackForReceiver(uint256 amount) public returns (uint256) {
        this.lowLevelFallbackForReceiver(amount);
        return amount;
    }
    function lowLevelFallback(uint256 amount) public returns (uint256) {
        this.lowLevelFallback(amount);
    }
}
