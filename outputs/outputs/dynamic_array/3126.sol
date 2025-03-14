pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_7 {
    uint[] public x;
    uint[] public y;
    constructor () public {
        x = new uint[](1);
        y = new uint[](2);
        x[0] = 0;
        y[1] = 0;
    }
    function doWork() public returns(uint){
        return y[0];
    }
    function getAndStorePairs() public returns(uint) {
        uint[] memory newX = new uint[](2);
        x[1] = 0;
        newX = x;
        return x[0];
     }
}
