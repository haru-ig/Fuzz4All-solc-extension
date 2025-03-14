pragma solidity ^0.8.0;
contract SameSemanticDifference
{
    function test() public pure returns(uint)
    {
        uint y = 0x123;
        uint z = 0x456;
        uint k;
        bytes memory bytes2 = hex"123456";
        bytes32 bytes4 = <KEY>;
        bytes32 bytes5 = 0x1234567890abcdef1234567890abcdef;
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
        return 0x123;
    }
}
