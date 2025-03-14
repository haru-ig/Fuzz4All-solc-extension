pragma solidity ^0.8.0;

contract CallerMutatingFallbackMutatedDeprecated {
    address payable address_;
    constructor() {
        address_ = payable(address(0xCEBDBE16817604fF4C2b585B2C7dAe7FED337C6E));
    }
    function fallback() public payable {
        address_.transfer(msg.value);
    }
}
