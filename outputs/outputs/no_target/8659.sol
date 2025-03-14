pragma solidity ^0.8.0;
contract OldABIv2
{
}
contract NewABIv2
{
    function f(uint256 x) public pure returns (uint256)
    {
        return x > 0? (x + 1) : 0;
    }
}
