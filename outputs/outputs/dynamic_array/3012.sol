pragma solidity ^0.8.0;
contract MimimumSizeArraysAssignment {
    uint[] x;
    constructor() public {
        x.push(0);
    }
        function m() public view {
        x = x;
        x = x;
        x.push(1);
    }
}
