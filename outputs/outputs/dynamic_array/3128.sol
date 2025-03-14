pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_7 {
    uint[] public x;
    constructor () public {
        x = new uint[](2);
        x[0] = 0;
    }
    function doWork() public returns(uint){
        return x[0];
    }
    function getAndStorePairs() public returns(uint) {
        x = x[0];
        return x[0];
     }
}

pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_8 {
    uint[] public x;
    uint[] public y;
    constructor () public {
        x = new uint[](0);
        x[0] = 0;
        y = new uint[](1);
        y[0] = 0;
    }
    function doWork() public returns(uint){
        return x[0];
    }
    function getAndStorePairs() public returns(uint) {
        x[0] = 0;
        y = new uint[](0);
        return x[0];
     }
}
