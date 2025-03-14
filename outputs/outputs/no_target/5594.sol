pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b) internal pure returns (uint, uint){
        uint c;
        b - a;
        uint x_ = x;
        uint y_ = y;

        uint0++;
        c = b / (b >> (x_ + y_));
        return (a, c);
    }
    uint160 constant uint0 = uint(2**160 - 2**160);
}
