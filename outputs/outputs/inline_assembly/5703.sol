pragma solidity ^0.8.0;
contract MutatedBlock9Mutation5 {
    modifier x(uint i) {
        _;
        _ = i;
    }
    function test() public returns(uint) {
        uint x = block.difficulty;
        uint y;
        y = block.coinbase;
        x(7);
        x(9);
        x(8);
        x(10);
        x(1);
        x(2);
        x(3);
        x;
    }
}
