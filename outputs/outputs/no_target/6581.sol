pragma solidity ^0.8.0;
contract myContractU is modifierU
{
    function g(uint3 x) public pure returns (uint) {
        return ((x & 255) << 8) | x;
    }
}
