pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_9 {
    uint[] public x;
    uint[] public y;
    constructor () public {
        x = new uint[](1);
        y = new uint[](2);
        x[0] = 0;
        y[1] = 0;
    }
    function doWork() public returns(uint){
        return assignArray();
    }
    function assignArray() public returns (uint) {
        uint[] memory newX = new uint[](2);
        x[1] = 0;
        newX = getAndStorePairs();
        return x[0];
    }
    function getAndStorePairs() public returns(uint[]) {
        uint[] memory newX = x;
        return x;
     }
}
