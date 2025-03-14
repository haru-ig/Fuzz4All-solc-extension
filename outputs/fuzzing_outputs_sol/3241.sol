pragma solidity ^0.8.0;
contract Caller {
    receive() external payable {
        this.lowLevelFallbackForReceiver(msg.value);
    }
    function lowLevelFallbackForReceiver(uint256 amount) public {
        require(amount > 0);
    }
}
