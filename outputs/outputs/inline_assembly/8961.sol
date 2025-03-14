pragma solidity ^0.8.0;
contract Solidity
{
    struct X
    {
        uint256 x;
    }
    struct C
    {
        uint256 x;
    }
    struct Y
    {
        uint256 x;
    }
    function test(X memory x) public
    {
        x.x;
        x.x = 0;
        x.x;
    }
    function test(C memory x) public
    {
        x.x;
        x.x = 0;
        x.x;
    }
    function test(Y memory x) public
    {
        x.x;
        x.x = 0;
        x.x;
    }
    function get(X memory x) public view returns (uint256)
    {
        return x.x;
    }
    function get(C memory x) public view returns (uint256)
    {
        return x.x;
    }
    function get(Y memory x) public view returns (uint256)
    {
        return x.x;
    }
}
