pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_10 {
    uint[12] public x;
    constructor () public {
        x = new uint[12]();
        x[0] = 0;
    }
    function doWork() public returns(uint){
        return x[0];
    }
    function getAndStorePairs() public returns(uint) {
        uint[12] memory newX = new uint[3];
        return x[0];
     }
}
