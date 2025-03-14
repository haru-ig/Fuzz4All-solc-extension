pragma solidity ^0.8.0;
contract SemanticMutation16
{
    function a(int128 n) public pure returns(int128)
    {
        return add(n,n,n);
    }
    function b(int128 n) public pure returns(int128)
    {
    	return add(n,n+n);
    }
    function c(int128 n) public pure returns(int128)
    {
    	return add(n+n,n+n);
    }
    function add(int128 x, int128 y, int128 z) internal pure returns(int128)
    {
        return x+y+z;
    }
}
