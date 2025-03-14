pragma solidity ^0.8.0;
contract Equivalent
{
using MutatedEquivalent2 for MutatedEquivalent2.Array ;
function subtractMax1(uint256[] memory a) public pure returns(uint256, uint256)
{
    return (a.search(function(uint256 elem){return (elem < 4)}), a.lastIndexOf(4));
}
}
