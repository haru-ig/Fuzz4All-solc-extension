pragma solidity ^0.8.0;
contract SemanticMutation15
{
    function a(int128 n) public pure returns(int128)
    {
        int128 x = add(n,n);
        int128 y = sub(n,-n);
        int128 z = mul(n,-n);
        x = add(y,z);
        y = mul(y,z);
        int128 final = add(x,y);
        return final;
    }
    function b(int128 n) public pure returns(int128)
    {
        int128 x = sub(n,-n);
        int128 y = add(n,n);
        int128 z = mul(n,-n);
        x = sub(y,z);
        y = mul(y,z);
        int128 final = sub(x,y);
        return final;
    }
    function c(int128 n) public pure returns(int128)
    {
        int128 x = mul(n,-n);
        int128 y = add(n,n);
        int128 z = sub(n,-n);
        x = add(y,z);
        y = mul(y,z);
        int128 final = mul(x,y);
        return final;
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

contract SemanticMutation20
{
    function a(int128 n) public pure returns(int128)
    {
        return add(add(n,n),sub(add(n,-n),mul(n,-n)));
    }
    function b(int128 n
