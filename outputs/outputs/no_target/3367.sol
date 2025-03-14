pragma solidity ^0.8.0;
contract modulator {
    event m(uint256 a,uint256 b);
    modulator public m;
    function modulate() public modulateModulator() public payable {
        uint256 c= m.a;
        uint256 e = 130000000000000000000 * m.a + 80000000000000000000;
        uint256 v = 5.18;
        e = e*v + c + e + m.x ;
        m.a = c+((e-87000000000000000000)/v);
        m.b = m.x + 70000000000000000000;
        m.m(m.a,m.b);
    }
    function modulateModulator() public {
        uint256 a = 10000000000000000000000000000;
        uint256 b = 200000000000000000000000;
        uint256 x = 6000000000000000000000000000000000;
        uint2
