pragma solidity ^0.8.0;
contract Cast_equivalent_9 {

function multiply_with_exponentiation(uint x, uint y, uint z)
    public pure
    returns (uint)
{
    return uint(uint(x) * ((uint256(10) ** uint(z)) * (uint256(10) ** uint(y))));
}
}
