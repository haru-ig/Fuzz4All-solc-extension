pragma solidity ^0.8.0;
contract SolveAssembly4
{
    function test() public pure returns(uint)
    {
        uint y = 0x123;
        uint z = 0x456;
        uint k;
        k = 0xFF & (sub(ptr1, r) ^ z);
        if (r == sub(ptr1, z)) {
            k = mul(k, y);
        }
        return 0x123;
    }
}
pragma solidity ^0.8.0;
contract SolveAssembly2
{
    function solve(uint[] memory) public pure returns(uint)
    {
        uint i;
        uint z = len(memory);
        for (i=0; i < y.length; i=i+z)
        {
            if (y[i] == z) {

                ptr = mload(ptr) - z;
                ptr2 = ptr ^ z;
                return ptr2;
            }
        }
        return 0x123;
    }
    uint[] array2;
    uint ptr;

    uint mload(uint x) public pure returns(uint)
    {
        assembly {
            ptr := add(x, 0x20)
            r := mload(ptr)
        }
        return r;
    }
    var y = uint[](10);
    function insert(uint x) public
    {
        array2.push(x);
    }
    function test(uint a) public
    {
        uint z;
        for (uint i=0; i<-z.length; i++) {

            /* ptr1 := 0xFF & (mload(ptr)-
