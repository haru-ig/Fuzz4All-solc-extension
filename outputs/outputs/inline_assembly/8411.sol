pragma solidity ^0.8.0;
contract SolveAssembly5
{
    function test() public pure returns(uint)
    {
        uint y = 0x123;
        uint z = 0x456;
        uint k;
        assembly
        {
            let ptr1 := 0
            let ptr2 := 0
            let j := ptr1
            let m := ptr2
            let r := mload(ptr1)
            mstore(j, add(j, 8))
            if eq(sub(or(mload(8), mload(m, j)))-add(1, r), z)
            {
                mstore(j, mul(or(mload(8), mload(m, j))), j := or(mload(8), mload(m, j)))
                k := sub(or(mload(8), mload(m, j)), r)
            }
        }
        return 0x123;
    }
}
