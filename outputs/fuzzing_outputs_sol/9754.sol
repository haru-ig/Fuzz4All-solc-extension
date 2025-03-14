pragma solidity ^0.8.0;
contract NoFallbackContract2 {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    fallback() external {}
}
