pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Mutative_2 {
    uint[] memory x;
    constructor () public {
        x = new uint[](1);
    }
    function doWork() public alwaysReturns(uint){
        return x[0];
    }
    function getAndStorePairs() public returns(uint) {
        return x[0];
     }
}
contract AssignmentModulation_V2_Semantic_3 {
    uint[] x;
    constructor () public {
        int x = [][];
        x;
    }
    function doWork() public returns(uint){
        return x;
    }
}
