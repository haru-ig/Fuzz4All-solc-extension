pragma solidity ^0.8.0;
contract SolveAssembly5
{
    uint x = 0x123;
    uint y = 0x456;

    function test() public pure returns(uint)
    {
        if((1 << 1) < 2 || (x % 2) == 0 || (y % 3) == 0)
        {
            return (((1 << 1) + 1) > 3) || (x + y + 2)!= 0xF0F0F0
        }
        else
        {
            uint z = 0xF0F0F0;
            uint k;
            assembly
            {
                mstore(0, 0xF0F0F0)
                mstore(1, z)
                k := div(mod(mload(1), 2), z)
            }
        }
    }
}
