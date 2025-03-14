pragma solidity ^0.8.0;
contract AnonymousCaller {
    address public value;
    constructor(address _value) {
        value = _value;
    }
    function example3() public {
        value = address(this);
    }
}
