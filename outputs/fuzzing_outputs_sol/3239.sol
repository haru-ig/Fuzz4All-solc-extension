pragma solidity ^0.8.0;
contract Caller {
    function lowLevelFallbackForReceiver(uint256 amount) public returns (uint256) {
        this.lowLevelFallbackForReceiver(amount);
        return amount;
    }
}
