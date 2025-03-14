pragma solidity ^0.8.0;
contract E {

    bool isZero(uint x) public pure returns(bool) {
        return x == 0;
    }

    function square(uint x) public pure returns(uint) {
        return x * x;
    }

    function g(uint x, uint g) public pure returns(uint) {
        return g * x;
    }


    function sqrt(uint x) public pure returns(uint) {
        assert(x > 0);
        uint power = 1;
        uint n = x;
        assert(x >= power);
        while(power*power < n) {
            assert(n > power);
            power = power + 1;
        }
        return power;
    }

    function sqrt16(uint16 x) public pure returns(uint16) {
        uint8 a = x & 15;
        uint16 z = 16 * a & x;
        if(z >= (uint16(16*a) - 16) * a) throw;
        return w;
    }
}

contract TestE {
    using A for uint;
    using E for uint;

    E e;
    function TestE() {
        e = E(0x0);
    }
    function test() public {
        uint i = 32;
        uint j = 32;
        uint k = 32;
        uint16 h = i - j;
        uint i1 = i;
        uint i2 = i1 + i;
        uint i3 = i - i2;
        uint16 k1 = i + h;
        uint16 k2 = h + i;
        uint16 k3 = i + h + 1;
        uint8 h1 = h;
        uint8 h2 = i1 + h + 2;
        uint8 h3 = i + h + h;
        uint8 i4 = i + 1 + 2;
        uint8 i5 = h;
        uint16  b1 = 1;
        uint16 b2 = 2048;
        uint16 b3 = 1 << 10;
        uint16 b4 = i;
        uint16 b5 = i1 | 4;
        uint16 b6 = 4 | 1 << 10;
        uint8 b7 = h;
        uint8 b8 = i4 +
