pragma solidity ^0.8.0;
contract SemanticMutation16
{
    function a(int128 n) public pure returns(int128)
    {
        return b(n)+b(n);
    }
    function b(int128 n) public pure returns(int128)
    {
        return add(n,n);
    }
}
