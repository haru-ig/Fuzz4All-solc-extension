pragma solidity ^0.8.0;
contract MutatedBlock6Mutation4 {
    function test2(uint x1, uint x2, uint x3) public pure returns (uint){
        uint a1 = x2 + x3 + x1;
        return a1;
    }
    function test3(uint x1, uint x2, uint x3) public pure returns (uint){
        uint temp = test2(x1,x2,x3);
        return temp;
    }
    uint public result;
    constructor() {
        result = test3(0,0,0);
    }
}
contract MutatedBlock6Mutation5 {
    function test
