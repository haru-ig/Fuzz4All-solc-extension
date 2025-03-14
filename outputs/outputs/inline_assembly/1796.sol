pragma solidity ^0.8.0;
contract Example{
    uint public immutable x1;
    uint public immutable x2;
    uint public immutable x3;
    constructor() {
        x1 = 10x;
        x2 = 20;
        x3 = 30;
    }
    function f() public pure {
        x1 = x1 + 5;
        x2 = x1 + 12;
        x3 = x2 + 23;
    }
}
