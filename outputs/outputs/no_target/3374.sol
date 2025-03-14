pragma solidity ^0.8.0;
contract modulator_original {
    uint256 constant public M = 300000000000000000000000000000000;
    uint256 constant public M1 = 30000000000000000000000000000000;
    uint256 constant public N = 30000000000000000000000000000000;
    uint256 constant public N1 = 300000000000000000000000000000000;
    uint256 constant public B = 20;
    uint256 constant public B1 = 19;
    uint256 constant public C = 18;
    uint256 constant public C1 = 17;
    uint256 constant public D = 16;
    uint256 constant public D1 = 15;
    uint256 constant public C8 = 15;
    uint256 constant public C144 = 12;
    uint256 constant public D8 = 9;
    uint256 constant public D24 = 6;
    uint256 constant public D13 = 14;
    modulator public m;
