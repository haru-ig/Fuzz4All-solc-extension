pragma solidity ^0.8.0;
contract SemanticMutation15
{
    function a(int128 x) public pure returns (uint256 b)
    {

    b=x+1;
    }
    function b(int128 x) public pure returns (uint256 b)
    {

    b=sub(x,1);
    }
    function c(int128 x) public pure returns (uint256 b)
    {

    b=mul(x,1);
    }
}
