pragma solidity ^0.8.0;
contract NoFallbackContract {
    address payable address_;
    constructor() {
        address_ = payable(msg.sender);
    }
    fallback() public {
        address_ = payable(msg.sender);
    }
}
