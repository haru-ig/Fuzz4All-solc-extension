pragma solidity ^0.8.0;
contract SemanticsInlineAssembly
{
    uint internal x;
    function set() public
    {
        x = 0x1000000000000000000000000000000000;
    }
    function test() public
    {
        uint256 s = 0b111111111111;
        x += s;
        x >>= s;
    }
    function get() public view returns (uint256)
    {
        return x;
    }
}
