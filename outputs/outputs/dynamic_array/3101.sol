pragma solidity ^0.8.0;
contract AssignmentModulation{
    uint[] public x;
    constructor () public {
        x[0] = 1;
        x[1];
        x[2];
    }
    function doWork() public returns(uint){
        x[0];
        x[1];
        x[2];
        x[1];
        x[250];
        x[1];
        x[250];
        x[1];
        x[250];
        x[1];
    }
    function getAndStorePairs() public returns(uint){
        return x[0];
    }
}
