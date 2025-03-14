pragma solidity ^0.8.0;
contract SemanticMutation15
{
    function a(int128 n) public pure returns(int128)
    {
        return add(n,n);
    }
    function b(int128 n) public pure returns(int128)
    {
        return sub(n,-n);
    }
    function c(int128 n) public pure returns(int128)
    {
        return mul(n,-n);
    }
    function add(int128 x, int128 y) internal pure returns(int128)
    {
        return x+y;
    }
    function sub(int128 x, int128 y) internal pure returns(int128)
    {
        return x-y;
    }
    function mul(int128 x, int128 y) internal pure returns(int128)
    {
        return x*y;
    }
}
