pragma solidity ^0.8.0;
contract SolveAssembly6
{
    uint x;
    function test() public pure returns(uint)
    {
        uint k;
        uint n;
        assembly
        {
            let ptr1 := 0
            mstore(ptr1, add(ptr1, 8))
            if iszero(ptr1)
            {
                mstore(ptr1, mul(ptr1, ptr1))
                k := sub(ptr1, x)
                n := add(ptr1, 8)
            }
        }
        return 0x123;
    }
}
