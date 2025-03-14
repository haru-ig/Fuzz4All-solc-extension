pragma solidity ^0.8.0;
contract A
{
    uint16 private x = 20;
    function f() external pure
    {
        uint256 y = 50;
        x = 11 * y;
    }
}
contract B
{
    function f() public pure{
        A a;
        a.f();
    }
}
