pragma solidity ^0.8.0;
contract ValueWithFallback {
    address public value;
    constructor(address _caller) {
        value = _caller;
    }
    function example3() public payable {
        if (value == address(this)) {
            value = payable(0x100);
        }
    }
}
