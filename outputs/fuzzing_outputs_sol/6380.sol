pragma solidity ^0.8.0;
contract Mutant2FallbackFunction {
    address payable address_;
    fallback function fallbackFunction() public {
        require(address_(msg.sender).send(msg.value));
    }
    constructor(address payable address_) {
        address_ = address_;
    }
}
