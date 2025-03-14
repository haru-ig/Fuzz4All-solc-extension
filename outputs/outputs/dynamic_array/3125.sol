pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_7 {
    uint[] public x;
    constructor () public {
        x = new uint[](1);
        x[0] = 0;
    }
    function doWork() public returns(uint){
        return x[0];
    }
    function getAndStorePairs() public returns(uint) {
        uint[3] memory newX = new uint[](3);
        x[2] = 0;
        newX = x;
        newX[2] = 0;
        return x[0];
     }
}
