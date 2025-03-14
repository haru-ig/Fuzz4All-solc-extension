pragma solidity ^0.8.0;
contract NonInlineAssembly
{
    uint internal x;
    void set() public
    { x = 0x1000000000000000000000000000000000; }
    function test(uint256 _x) public
    {
        x >>=_x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x;
    }
    function get() public view returns (uint256)
    { return x; }
}
