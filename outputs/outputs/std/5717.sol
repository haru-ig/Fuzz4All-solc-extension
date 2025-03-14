pragma solidity ^0.8.0;
contract Mutated{
    uint public p0;
    uint public p1;
    uint public p3;
    uint public p2;
    uint public p33;
    uint public p4;
    function memory(uint _x) public pure returns (uint){
        return 1;
    }
    modifier memory(uint _x){
        p0 = p1;
        p1 = p2;
        p2 = _x + _x + _x + _x + _x;
        p3 = p1 > p0? p1 - p0 : p0 - p1;
        p33 = memory(p4).toString().length;
        p4 = p3 + p3 + p33 + p33;
    }
    uint[24] public p38;
    uint[13] public p5;
    uint[1][(1 << 7) + 7] public p10;
    constructor(){
        p4 = p4 << 20 + (p2 + p2) << 4 + p0 + 13 + (memory(p4).toString().length == 1? 1 : 3) + 6 + p0 + 23 + p0 - p0 / (p0 && (1 << 6) + (p2 + p2) << 5 + 9);
        p3 = p4 - p3;
        p4 = 0x28d17c5d8864c61fb70a2284789cf99ac0db310b8fd3840b113de371cbbd9e972e886fc3207a820c8fe862db82c03d03ea71c8bebf1b85129902e49465959e0745a62091b6d827c64471c48eb57c1a764531a7d429d4454
