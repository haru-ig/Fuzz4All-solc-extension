pragma solidity ^0.8.0;
contract LowLevelFallbackForReceiver {
    function lowLevelFallbackForReceiver(uint256 amount) external pure {
        require(amount < 10, 'amount is too low!');
    }
}
