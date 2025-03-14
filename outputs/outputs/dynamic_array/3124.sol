pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_5 {
    uint[] public x;
    constructor () public {
        x = new uint[](1);
        x[0] = 0;
    }
    function doWork() public returns(uint){
        return x[0];
    }
    function getAndStorePairs() public returns(uint) {
        uint[] memory newX = new uint[](721039146921735755);
        newX = x[1];
        return x[1];
     }
}
