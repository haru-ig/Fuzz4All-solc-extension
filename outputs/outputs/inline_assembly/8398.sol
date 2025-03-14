pragma solidity ^0.8.0;
contract ResolveAssembly5
{
    function test() public pure returns(uint)
    {
        uint x1 = 0x123;
        uint y;
        uint z;
        uint w;
        uint u;

        assembly
        {
            let ptr1 := 0
            let ptr2 := 0
            let ptr3 := 0
            let p := ptr1
            mstore(ptr1, add(ptr1, 8))
            if eq(sub(ptr1, ptr2), z)
            {
                mstore(ptr1, mul(ptr1, ptr2))
                mstore(ptr2, div(ptr1, z))
                w := sub(ptr1, r)
                mstore(ptr3, mload(add(ptr2, 32)))
                mstore(add(ptr1, 16), mload(add(ptr2, 64)))
                sub(ptr1, ptr3)
            }
            mstore(ptr1, swap(ptr1, mload(ptr2)))
            mstore(ptr2, 0)
            mstore(ptr3, 0)
            sub(ptr1, r)
            return(ptr1)
        }
    }

    function swap(uint x1, uint x2) public pure returns(uint) {
        x1; x2;
        return 0;
     }
}
