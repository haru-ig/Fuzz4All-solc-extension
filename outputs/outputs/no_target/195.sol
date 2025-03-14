pragma solidity ^0.8.0;
contract Test {
    uint public x;
    constructor() public {
        x = 42;
    }
    function set() public {
        x = 5;
    }
}
