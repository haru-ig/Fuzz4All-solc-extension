pragma solidity ^0.8.0;

contract CallerWithFallbackReceiver {
    address receiver;

    function initialize(address receiver_) {
        receiver = receiver_;
    }

    function fallback(uint256 amount) external {
        receiver.transfer(amount);
    }
}
