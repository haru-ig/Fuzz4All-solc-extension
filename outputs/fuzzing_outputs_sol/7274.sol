pragma solidity ^0.8.0;
contract NamelessCaller {
    address public value;
    constructor() {
        value = address(this);
    }
    function example2() public {
        value = address(this);
    }
}
