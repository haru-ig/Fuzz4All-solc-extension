pragma solidity ^0.8.0;
contract HelloWorld {
    function add(uint a, uint b) public pure returns (uint) {
        uint z = (a + b);
        uint hi = (uint160(z) * uint160(z)) >> 32;
        require(hi < (2 ** 256) - 1, "overflow");


        return z;
    }
}
