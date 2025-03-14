pragma solidity ^0.8.0;
contract myContractU
{
    function g(uint x) public pure
    returns
    (uint v)
    {
        return x  * 256 + f(x);
    }
}
