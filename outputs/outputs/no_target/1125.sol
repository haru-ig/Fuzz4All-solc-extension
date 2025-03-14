pragma solidity ^0.8.0;
contract SemanticMutation16
{
    uint constant private k = 10**10;
    function f() public pure returns (uint, uint256)
    {
        uint i = 1 / k;
        uint j = (1-((1-i*i)/2) >> 2047);
        return (k, j);
    }
}
