pragma solidity ^0.8.0;
contract Mutation
{
    uint public a;
    constructor() {
        if(block.timestamp > 10) {
            a = a + 1;
        }
    }
    function update2() public returns (uint b) {
        if(block.timestamp > 10) {
            a -= 2;
            b = a;
            b /= 2;
        }
    }
}
