pragma solidity ^0.8.0;
contract MutatedBlock9Mutation6 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x;
        x = block.number;
        asm {
            x := mload(_var) - 1
            x := mload(_var) + 2
        }
        return x;
    }
}
