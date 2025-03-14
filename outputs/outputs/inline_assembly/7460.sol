pragma solidity ^0.8.0;
contract Equivalent_contract {
    constructor() {
        x = 123;
        y = x * constant2;
    }
    function foo() public {
        x = 444;
        y = x * constant2;
    }
}
