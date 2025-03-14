pragma solidity ^0.8.0;
contract YulAssembly
{
    struct X
    {
        constructor (uint256 x_) { x = x_; }
        uint256 x;
    }
    function f(uint256 x_0) public pure returns (uint256)
    {

        X memory yul;

        yul.x = x_0;
        return(yul.x);
    }
    function g(X memory yul) public view returns (uint256)
    {
        return(yul.x);
    }
}
contract YulAssembly2
{
    struct X
    {
        constructor (uint256 x_) { x = x_; }
        uint256 x;
    }
    function f() public pure returns (uint256)
    {

        X memory yul;

        yul.x = 120;
        return(yul.x);
    }
    function g(X memory yul) public pure returns (uint256)
    {
        return(yul.x);
    }
}
