pragma solidity ^0.8.0;
contract Caller8
{
        function c(uint d) public {
            mapmap memory m = mapping(uint=>uint);
            m[100] = 100;
            m[10] = 20;
            m[50] = 50 ether;
            m[0] = 0;
            m[75] = 75 uint64;
            m[99] = uint8;
            m[135] = 99;
            m[500 ether+135] = 135 ether;
            m[800 uint16] = 10u16;
            m[0x9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff] = 98;
        }
        function d() public payable {
            mapmap memory m = mapping(uint=>uint);
            m[100] = 100;
            m[10] = 20;
            m[50] = 50 ether;
            m[0] = 0;
            m[75] = 75 uint64;
            m[50 ether] = m[50]+1 ether;
            m[99] = uint8;
            m[99 ether] = 99 ether;
            m[500 ether+135] = 135 ether;
            m[800 uint16] = 10u16;
            m[0xafff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff] = 98;
            m[0xafff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff] = 98;
            m[uint(0xfffffffffffffffffff) + 0xafff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff9fff] = 98;
            m[800 uint64] = m[800]+1 uint64;
            m[499] = uint8;
            m[500 ether + m[13] + 0xf0fff0fff0fff0fff0fff0fff0fff0fff0fff0fff0fff0fff0fff0fff0fff0fff0fff0fff] = 10 ether;
            m[800 uint64] = m[800] + uint64(d);
            m[uint(0xfffffffffffffffffff) * 1000000000000000000000000000000000000000000000000
