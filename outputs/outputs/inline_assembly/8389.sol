pragma solidity ^0.8.0;
contract Solidity5
{
    function test() public view returns(uint)
    {
        uint y = 0x123;
        uint z = 0x456;
        uint k;
        k = sub(mload(add(ptr1, 8)), mload(ptr2));
        memoryPtr = mload(ptr1);
        if (k == z)
        {
            k = add(memoryPtr, mload(ptr2));
        }
        else
        {
            k = mul(memoryPtr, memoryPtr);
        }
        return 0x123;
    }
}
