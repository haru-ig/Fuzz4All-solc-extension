pragma solidity ^0.8.0;
contract NoFallbackContract {
    address address_;
    constructor() {
        address_ = payable(address(new NoFallbackContract2));
    }
    fallback() external payable {

    }
}
