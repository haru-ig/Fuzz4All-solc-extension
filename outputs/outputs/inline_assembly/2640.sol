pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public y;
    uint public z;
    uint public qk;
    uint public qw;
    uint public m;
    constructor(uint a, uint b) public {
        x = a;
        ky = b;
        qk = 0;
        m = 9 * ky / d;
        z = m * x + qk;
        qw = m * x / 3 + qk;
        qk = ky * 2;
    }
    function d() public pure returns (uint) {
        return 1000;
    }
}
contract C is D {
    constructor(uint a, uint b) D(a, b) {}
    function f() public {
        bytes memory empty = "";
        uint k = 100;
        assembly {

            mSTORE(m, 0)

            mSTORE(add(m, 0x00010000), 1)

            mLoad(sub(m, 0x00010000), k)

            mSTORE(add(m, 0x00020000), mLOAD(add(m, 0x00030000)))

            mLoad(add(m, 0x00040000), k)
            mLOAD(add(m, 0x00070000))

            mLoad(add(m, 0x00090000), k)
            mRET(k)
        }
    }
}
contract D {
    uint public x;
    uint public y;
}
contract C is D {
    constructor(uint a, uint b) { }
    function f() public {
        bytes memory empty = "";
        uint k;
        assembly {
            mStore(
