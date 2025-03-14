pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_5 {
    uint[1] public x;
    constructor () public {
        x = new uint[1]{};
        x[0] = 0;
    }
    function doWork() public returns(uint){
        return x[0];
    }
    function getAndStorePairs() public returns(uint) {
        uint[][3] storage newX = new uint[](4, 3);
        x[0] = 0;
        newX[0] = x;
        return x[0];
     }
}
