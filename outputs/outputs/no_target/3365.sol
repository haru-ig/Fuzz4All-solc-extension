pragma solidity ^0.8.0;
contract modulator {
    uint256 constant public M = 8300000000000000000000000000000;
    uint256 constant public M1 = 830000000000000000000000000000;
    uint256 constant public N = 9100000000000000000000000000000;
    uint256 constant public N1 = 910000000000000000000000000000000;
    uint256 constant public B = 23;
    uint256 constant public B1 = 22;
    uint256 constant public C = 21;
    uint256 constant public C1 = 20;
    uint256 constant public D = 19;
    uint256 constant public D1 = 18;
    uint256 constant public C8 = 15;
    uint256 constant public C144 = 12;
    uint256 constant public D8 = 10;
    uint256 constant public D24 = 7;
    uint256 constant public D13 = 4;
    modulator public m;
    function multiply(modulator memory
