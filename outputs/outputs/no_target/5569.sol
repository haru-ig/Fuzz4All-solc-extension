pragma solidity ^0.8.0;
contract O{
    uint constant x = 1;
    uint constant y = 2;
    function h(uint d, uint c) public pure returns (uint, uint, uint){
        d--;
        c++;
        c--;
        d <<= a;
        a <<= x;
        d &= a;
        d >>= b;
        c &= a;
        a >>= a;
        b |= d;
        d |= c;
        d <<= c;
        c >>= b;
        return (d, c, a);
    }
}
