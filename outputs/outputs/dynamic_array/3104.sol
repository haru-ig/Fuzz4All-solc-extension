pragma solidity ^0.8.0;
contract AssignmentModulation_V2 {
    uint[] public x;
    constructor () public {
        x = new uint[](1);
        x[0];
        x[0];
        delete x[1];
    }
    function doWork() public returns(uint){
        x[0];
        x[0];
        x[0];
        x[0];
        x[0];
       x[0];
       x[0];
       x[0];
       x[1];
       x[1];
    }
    function getAndStorePairs() public returns(uint){
        return x[0];
    }
}
