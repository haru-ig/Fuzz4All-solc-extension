pragma solidity ^0.8.0;
contract myContractU is modifierU
{
    function f(uint x) public pure returns (uint y) {
        require(x > 1024, "Value too large");
        y = x / 256;
    }
    function g(uint x) public returns (uint) {
        return x * 256 + f(x);
    }
}
