pragma solidity ^0.8.0;
contract ValueWithFallback2 {
    address public value;
    constructor(address _caller) {
        value = _caller;
    }
    function example3() public payable {
        value = address(this);
    }
}
