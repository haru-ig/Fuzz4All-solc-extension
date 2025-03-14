pragma solidity ^0.8.0;
contract MutatedBlock9Mutation51 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.number;
        x = block.timestamp + 10;
        return block.timestamp / x;
    }
}
