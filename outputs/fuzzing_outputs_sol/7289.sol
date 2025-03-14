pragma solidity ^0.8.0;
abstract contract Caller Example {
    address public value;
    constructor() {
        value = address(this);
    }
    function test() public payable virtual {
        value = address(this);
    }
}
