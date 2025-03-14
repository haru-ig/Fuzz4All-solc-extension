pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_5 {
    uint[] public x;
    object foo = new object();
    constructor() public {
        x = new uint[](2);
        x[0] = 0;
    }
    function doWork() public returns (uint) {
        return x[0];
    }
    function getAndStorePairs() public returns (uint) {
        uint[] memory newX = new uint[](4);
        x[0] = 0;
        newX = x;
        return x[0];
     }
}
contract AssignmentModulation_V2_Semantic_6 {
    object foo = new object();
    uint[] public x;
    uint[] public z;
    constructor() public {
        x = new uint[](1);
        x[0] = 0;
        z = new uint[](1);
        z[0] = 0;
    }

    function doWork() public returns(uint){
        return x[0];
     }
    function getAndStorePairs() public returns(uint){
        uint[] memory newX = new uint[](3);
        x[0] = 0;
        newX = x;
        z[1] = 0;
        newX = x;
        return x[0];
     }
}
contract AssignmentModulation_V2_Semantic_7 {
    uint[] public x;
    uint[] public z;
    constructor() public {
        x = new uint[](3);
        z = new uint[](1);
        x[0] = 0;
    }
    function doWork() public returns(uint){
        return x[0];
     }
    function getAndStorePairs() public returns(uint){
        uint[] memory newX = new uint[](2);
        newX = x;
        uint[] memory newZ = new uint[](1);
        newZ = z;
        x[0] = 0;
        newX =
