pragma solidity ^0.8.0;
contract SomeContract {
    uint storage x;
    constructor() {
        x = 1;
    }
    function simpleContract() public {
        x += 2;
    }
    function lowLevel() public {
        x += 5;
    }
    function highLevel() public {
        x += 6;
    }
}
