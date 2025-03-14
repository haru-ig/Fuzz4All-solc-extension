pragma solidity ^0.8.0;
contract ValueWithFallback3 {
    address public value;
    constructor(address _caller) {
        value = _caller;
    }
    function example2() public payable {
        require(value == address(this));
    }
    function example3( ) public payable {
        Address.callValue(msg.value);
    }
}
