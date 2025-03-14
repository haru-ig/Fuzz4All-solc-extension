pragma solidity ^0.8.0;
interface BaseMath {
    function add(uint x, uint y) external pure returns (uint z);
    function sub(uint x, uint y) external pure returns (uint z);
    function mul(uint x, uint y) external pure returns (uint z);
    function div(uint x, uint y) external pure returns (uint z);
}
contract MutateProgram {

    uint[] a;
    uint[] d;
    bytes32 f1;
    uint l1;
    bytes32 s1;
    uint32 u1;
    uint8 x1;
    address w1;

    BaseMath m;
    bool[] not_bool;

    constructor() {

        for (uint i = 0; i < 1000; i++) {
            a[i] = random_uint(256);
        }
        for (uint i = 0; i < 100; i++) {
            d[i] = random_uint(256);
        }

        for (uint i = 0; i < 332; i++) {
            a[256 + i] = a[256 + i] + uint8(uint(keccak256(abi.encode(i)))) % 256);
        }

        l1 = a.length;

        for (uint i = 0; i < 332; i++) {
            a[l1 + i] = a[l1 + i] + uint8(uint(keccak256(a[l1 + i], a[256 + i]))) % 256;
        }
    }


    function set(uint x, uint i) public {
        if (i >= a.length) { throw; }
        a[i] = x;
    }

    function set_bool(bool x, uint i) public {
        if (i >= a.length) { throw; }
        not_bool
