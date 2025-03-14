pragma solidity ^0.8.0;
contract AssignmentModulation_V02 {
        uint[] public x;
    constructor () public {
        x = new uint[](2);
        x = x + new uint[](1);
    }
    function doWork() payable public returns(uint){
        x[1];
        x[0];
        x[1];
        x[0];
        x[0];
       x[0];
       x[0];
       x[1];
       x[0];
    }
    function getAndStorePairs() public returns(uint){
        return x.length;
    }
}
interface Misty {
    function getAndMutateSomething(uint value) external payable;
}
