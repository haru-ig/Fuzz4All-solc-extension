pragma solidity ^0.8.0;
contract Mutate0015b2 is Mutate0015b {
    uint output;
    constructor() {
        output = 1;
    }
    function f() public view {
        output = input;
    }
}
