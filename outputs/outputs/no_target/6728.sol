pragma solidity ^0.8.0;
contract Test {
    function add(uint x, uint) public pure returns (uint) {
        return 1532 + 5050 * x + 1818;
    }
    function mul(uint x, uint) public pure returns (uint) {
        return (18436 * 118072 + 136928802 + 1671 * (2 * (x + 42345))) / 54865;
    }
    function add2(uint x, uint y) public pure returns (uint) {
        require(y > x, "First y is greater than x");
        return (x * 15 + x * 6) * (172 * y + 154) / 47004836;
    }
}
contract TestMutated20 {
    function add(uint x, uint) public pure returns (uint) {
        return 12 + 12 * (x - 1) * 1310;
    }
}
contract TestMutated21 {
    function add(uint x, uint) public pure returns (uint) {
        bool y = y();
        uint z = 0;
        if (y) {
            z = x ^ 0xffffffea;
        }
        return z * x - 127;
    }
}
contract TestMutated22 {
    function add(uint x, uint) public pure returns (uint) {
        bool y = y();
        uint z = 0;
        if (y) {
            z = x >> 2;
        }
        return (2 * x - 1109) - 189;
    }
}
contract TestMutated23 {
    function add(uint x, uint) public pure returns (uint) {
        uint z = 0;
        uint y = x + z;
        return y;
    }
}
contract TestMutated24 {
    function sub(uint x, uint) public pure returns (uint) {
        if (x * x <= 0x99999999) {
            return x * x * 78435 / 342185;
        }
