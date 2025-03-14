pragma solidity ^0.8.0;
contract mutationv1
{
    function f() public pure
    {
        f();
        f();
    }
}
contract mutationv2
{
    function f() public pure
    {
        f();
        f();
    }
}
contract mutationv3
{
    function f() public pure
    {
        f();
        f();
    }
}
contract mutationv4
{
    function f() public pure
    {
        uint[2][2][2] storage s;
        s[0][0][0] = 0;
        s[0][1][0] = 0;
        s[1][0][0] = 0;
        s[1][1][0] = 0;
    }
}
contract mutationv5
{
    function f() public pure
    {
        uint224[4][224] storage s;
        s[0][0][0] = 0;
        s[0][1][0] = 0;
        s[0][0][1] = 0;
        s[0][1][1] = 0;
        s[1][0][0] = 0;
        s[1][1][0] = 0;
        s[1][0][1] = 0;
        s[1][1][1] = 0;
        s[2][0][0] = 0;
        s[2][1][0] = 0;
        s[2][0][1] = 0;
        s[2][1][1] = 0;
        s[3][0][0] = 0;
        s[3][1][0] = 0;
        s[3][0][1] = 0;
        s[3][1][1] = 0;
    }
}
contract mutation1
{
    function f() public pure
    {
        (uint256[2][2][2]) storage s;
        s[0][0][0] = 0;
        s[0][1][0] = 0;
        s[1][0][0] = 0;
        s[1][1][0] = 0;
    }
}
contract mutation2
{
    function f(bool[224] memory b) public pure
    {
        (uint277[4][224]) storage s;
        s[0][0][0] = 0;
        s[0][1][0] = 0;
        s[0][0][1] = 0;
        s[0][1][1] = 0;
        s[1][0][0] = 0;
        s[1][1][0] = 0;
        s[1][0][1] = 0;
        s[1][1][1] = 0;
        s[2][0][0] = 0;
        s[2][1][0] = 0;
