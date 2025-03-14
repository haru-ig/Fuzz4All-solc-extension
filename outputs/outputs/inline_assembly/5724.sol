pragma solidity ^0.8.0;
contract MutatedBlock9Mutation87 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.timestamp + 10;
        uint y = x;
        return block.number;
    }
}
contract MutatedBlock9Mutation88 {
    uint public _var;
    function() public payable {
    }
    function test() public view returns(uint) {
        uint x = block.timestamp + 10;
        uint y = x;
        return block.timestamp / y;
    }
}
