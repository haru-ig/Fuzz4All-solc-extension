pragma solidity ^0.8.0;
contract AssignmentModulation_V3 {
    uint[] public x;
    constructor () public {
        x = new uint[](1);
        x[0];
    }
    function doWork() public returns(uint){
        x[0];
        x[0];
    }
    function getAndStorePairs() public returns(uint){
        return x[0];
    }
}
pragma solidity ^0.5.0;
contract AssignmentModulation_V4 {
    uint[] public x;
    constructor () public {
        x = new uint[](1);
    }
    function doWork() public returns(uint){
        x[0];
    }
    function getAndStorePairs() public returns(uint){
        return x[0];
    }
}
