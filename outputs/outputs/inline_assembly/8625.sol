pragma solidity ^0.8.0;
contract Modul {
    function sum(uint x) pure public returns (uint y) {
        uint z = x + mod(x, 2);
        z = mul(z, 2);
        return z - 100;
    }
    function mul(uint x) pure public returns (uint z) {
        return x + mul(x, 2);
    }
    function mul(uint x) pure public returns (uint z) {
        return x + mul(x, 2);
    }
}
