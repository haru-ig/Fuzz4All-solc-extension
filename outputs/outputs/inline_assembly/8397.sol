pragma solidity ^0.8.0;
contract solveAssembly5
{
    constructor()
    {
        assert(uint(address(this).balance) == 0);
    }

    function test() public pure
    {
        uint y = 0x123;
        uint z = 0x456;
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
        require(uint(address(this).balance) == k, "balance");
    }
}
