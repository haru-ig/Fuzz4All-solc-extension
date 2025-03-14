pragma solidity ^0.8.0;
contract SemanticMutation16
{
    constructor()
    {
    }
    function a(int128 n) public pure returns(int128)
    {
        return x*n;
    }
    function b(int128 n) public pure returns(int128)
    {
        return n*x;
    }
    constructor(int128)
    {
    }
    function add(int128 x, int128 y) internal pure returns(int128)
    {
        return x+y*y+y*x;
    }
    function sub(int128 x, int128 y) internal pure returns(int128)
    {
        return x-y;
    }
    function mul(int128)
    {
    }
}
