pragma solidity ^0.8.0;
contract modifierZ{
    function g(uint x) public pure returns (uint) {
        uint y = x / 256;
        uint z;
        assembly{
            mstore(add(z, 100), x)
        }
        return y;
    }
}
contract myContractZ is modifierZ
{
    function h(uint x) public returns (uint) {
        return x * 256 + g(x);
    }
}
