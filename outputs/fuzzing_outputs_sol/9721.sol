pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutatedMod {
    address payable address_ = new address();
    constructor() {
        address = payable(address_);
    }
    function fallback() public payable {
        uint x = 40;
        x = x - 10;
        address_ += x;
        require(x == 30);
    }
}
