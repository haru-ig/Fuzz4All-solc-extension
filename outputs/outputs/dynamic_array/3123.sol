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
        return x[0];
     }
}
contract AssignmentModulation_V2_Semantic_6 {
    uint[] public x;
    constructor () public {
        x = new uint[](1);
        x[0] = 0;
    }
    function doWork() public returns(uint){
        return x[0];
    }
    function getAndStorePairs() public returns(uint) {
        uint[] memory newX = new uint[](2);
        x[1] = 0;
        newX = x;
        return x[0];
     }
}
