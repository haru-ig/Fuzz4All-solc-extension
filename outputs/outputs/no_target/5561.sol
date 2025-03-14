pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b) internal pure returns (uint, uint){
        uint c;
        a -= a;
        b += b;
        c = a+b;
        c += a;
        c -= b;
        a >>= a;
        a /= a;
        a ^= a;
        b >>= a;
        b /= b;
        b |= b;
        b >>= x;
        b /= y+x;
        return (a, c);
    }
}
