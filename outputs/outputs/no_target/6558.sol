pragma solidity ^0.8.0;
contract myContractC {
    function f(uint x) returns (uint) {
        return x / 256;
    }
    function g(uint x) pure returns (uint) {
        return x + 0;
    }
}
