pragma solidity ^0.8.0;
contract AssignmentModulation_V2{
    uint[] public x;
    constructor() public{
        x = new uint[](2);
    }
    function doWork() public {
        uint stored_pairs = x[0];
        if(x.length > 255){
            x[255] = 5;
        }
        x[0] = x[1];
        x[1] = stored_pairs;
    }
    function getAndStorePairs() public returns(uint){
        return x[0];
    }
}
