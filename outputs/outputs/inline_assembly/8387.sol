pragma solidity ^0.8.0;
contract SolveAssembly3
{
    function test1() public pure returns(uint)
    {
        uint y = true;
        uint z = false;
        uint k;
        assembly
        {
            let ptr1 := 0
            let ptr2 := 0
            let r := mload(ptr1)
            mstore(ptr1, add(ptr1, 8))
            if eq(sub(ptr1, ptr2), z)
            {
                mstore(ptr1, mul(ptr1, ptr2))
                k := sub(ptr1, r)
            }
        }
        return 0x0123;
    }
}
