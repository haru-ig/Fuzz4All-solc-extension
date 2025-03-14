pragma solidity ^0.8.0;
library MutatedBlock9 {
    uint private constant MAXNUMBER = 2**256;
    bytes32 function test() public pure returns(uint) {
        return block.number;
    }
}
contract MutatedBlock9Mutation5 {
    uint public _var = 1;
    function test() public returns(uint) {
        uint x;
        while (x < MAXNUMBER) {
            x = x * x;
        }
        return x;
    }
}
