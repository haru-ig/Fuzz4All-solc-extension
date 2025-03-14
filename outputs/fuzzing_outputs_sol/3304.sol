pragma solidity ^0.8.0;
contract SomeContract {
    uint public x;
    constructor() {
        x = 1;
    }
    function simpleContract() public pure {
        x += 2;
    }
    function lowLevel() public view {
        x += 5;
    }
    function highLevel() public view{
        x += 6;
    }
}
