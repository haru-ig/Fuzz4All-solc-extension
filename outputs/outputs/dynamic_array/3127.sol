pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_7 {
    uint[] public x;
    address[] public y;
    constructor (uint m, address a) public {
        x = new uint[](1);
        y = new address[](0);
    }
    function doWork() public {
        x[0] = 0;
    }
    function getAndStorePairs() public returns(uint) {
        uint[] memory newX = new uint[](2);
        x[1] = 0;
        newX = x;
        return x[0];
     }
}
contract AssignmentModulation_V2_Semantic_8 {
    uint[] public x;
    address[] public y;
    constructor (uint m, address a) public {
        x = new uint[](1);
        y = new address[](0);
    }
    function doWork() public {
        x[0] = 0;
    }
    function getAndStorePairs() public returns(uint) {
        address[] memory newY = new address[](1);
        y = newY;
        return x[0];
     }
}
contract AssignmentModulation_V3_Semantic_1 {
    function doWork(uint a) public returns(uint) {
        return a;
    }
    function getAndStorePairs() public returns(uint) {
        uint f = doWork(1);
        return a;
     }
}
contract AssignmentModulation_V3_Semantic_2 {
    function doWork(uint a) public returns(uint) {
        return a;
    }
    function getAndStorePairs() public returns(uint) {
        uint f = doWork(1);
        uint b = f + 1;
        return a;
     }
}
contract AssignmentModulation_V3_Semantic_3 {
    function doWork(uint a) public returns(uint) {
        return a;
    }
    function getAndStorePairs() public returns(uint) {
