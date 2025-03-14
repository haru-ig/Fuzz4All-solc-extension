pragma solidity ^0.8.0;
contract HelloWorld {
    function add(uint a, uint b) public pure returns (uint) {
        uint x = 1; x * x; x **= (a * 2 + b);
        uint hi = (uint160(x) * uint160(x)) >> 32;
        require(hi < (2 ** 256) - 1, "overflow");
        uint z = a + b;
        return z;
    }
}
