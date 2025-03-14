pragma solidity ^0.8.0;
contract BadFallbackContract {
    address payable fallback_;
    constructor(address payable _fallback) {
        fallback_ = _fallback;
    }
    receive() external {Fallback()}
    receive() payable {Fallback()}
    receive() direct payable {Fallback()}
    receive() external contract {Fallback()}
    receive() direct contract {Fallback()}
}
