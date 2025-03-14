pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_2 {
    uint[] public x;
    constructor () public {
        x = new uint[](1);
        x;
    }
    function doWork() public returns(uint){
        return x[0];
    }
    function getAndStorePairs() public returns(uint) {
        return x[0];
     }
}
