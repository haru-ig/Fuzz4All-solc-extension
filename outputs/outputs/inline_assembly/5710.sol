pragma solidity ^0.8.0;
contract MutatedBlock9Mutation8 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x;
        x = block.number;
        x;
        x += block.timestamp;
        if (1){
            x = 12;
            x = x / 17;
        } else {
            x = 17;
            x -= 2;
            x %= 15;
            x;
        }
        if (1) {
            uint128 y = (uint128(uint(x) - uint(1))) - uint128(uint(x) + uint(79));
        } else {
            uint512 y = (uint512(uint(x) - uint(1))) - uint512(uint(x) + uint(79)));
        }
        uint8 z = block.difficulty;
    }
}
