pragma solidity ^0.8.0;
contract SolveAssembly6
{
    mapping (uint=>uint) public x;
    function test() public pure
    {
        x[0x12345678] = 0x0;
        uint xv = x[0x12345678];
        uint w = xv | 0x010101010;
        x[0x12345678] = w;
        xv = x[0x12345678];

    }
}
