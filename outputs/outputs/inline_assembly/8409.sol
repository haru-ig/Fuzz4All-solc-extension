pragma solidity ^0.8.0;
contract SolveAssembly5
{
    function test2() public pure returns(uint)
    {
        uint y = 0x123;
        y = 0x456;
        uint k;
        assembly
        {
            let _ := 0x123
            let ptr1 := 0
            let ptr2 := 0
            let j := ptr1
            const ptr3 := ptr1
            let m := ptr2
            uint r := mload(ptr1)
            mstore(j, add(j, 8))
            if eq(sub(j, m), z)
            {
                mstore(j, mul(j, m))
                k := sub(j, r)
            }
        }
        return 0x123;
    }
}
