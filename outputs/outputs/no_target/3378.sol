pragma solidity ^0.8.0;
contract modulator2_1 is modulator2 {
    using math256 for uint256;
    uint256 constant public M = 217000000000000000000000000000000000;
    uint256 constant public N = 2170000000000000000000000000000000;
    uint256 constant public D = 18;
    uint256 constant public D2 = 17;
    uint256 constant public D24 = 2;
    uint256 constant public D256 = 1;
    uint256 constant public D2_1 = 50000000000000000000000000000000000;
    uint256 constant public N_1 = 50000000000000000000000000000000;
    uint256 constant public D_1 = 32;
    uint256 constant public D2_1 = 23;
    uint256 constant public N_1 = 21;
    uint256 constant public D_1 = 16;
    uint256 constant public D2_148_22 = 1;

    uint256 x1;
    uint256 x2;
    *uint256[2] public x;

    function add(uint256 v) public pure {
        x2 += v;
    }

    function div(uint256 v) public pure {
        require(v > 0);
        m._check();
        uint256 t = x1;
        x1 = x2;
        x2 = t / v;
    }

    function mul(uint256 v) public pure {
        m._check();
        uint256 t = x1;
        x1 = v * x2;
        x2 = t + x1;
    }

    function _check() internal pure {
        uint256 a = x2 - x1;
        uint
