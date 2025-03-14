pragma solidity ^0.8.0;
library Mutating {
    receive() external payable {}
    fallback() external payable {}
}
contract MutatedFallbackMutated {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    function fallback() public payable {
        Mutating.fallback();
    }
}
