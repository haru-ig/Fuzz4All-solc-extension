pragma solidity ^0.8.0;
contract SolveAssembly5
{
    function test() public pure returns(uint)
    {
        uint y = 0x123;
        uint z = 0x456;
        uint k = z - y;
        k = k + y;
        return 0x123;
    }
}
