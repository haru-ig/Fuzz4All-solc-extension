pragma solidity ^0.8.0;
contract AssignmentModulation {
    uint[] public x;
    constructor () public {
        x.push(0);
        x.push(0);
        delete x[1];
    }
    function doWork() public returns (uint) {

        x[x.length];
        x[x.length];
        x[x.length];
        x[x.length];
        x[x.length];
        x[x.length];
        x.length++;
        x.length++;
        x.length++;
        x.length++;
        x.length++;
        x.length++;
        x.length++;
        x.length++;
    }
    function getAndStorePairs() public returns (uint) {
        return x[x.length];
    }
}
