pragma solidity ^0.8.0;
contract SolveAssembly5_
{
    function test() public view returns(uint)
    {
        uint y;
        uint z;
        uint k;
        assembly
        {
            mload(0x40)
            mstore(0x38,0x9a202017)
            mstore(0x38,0x9a202011)
            mstore(0x38,0x17)


            mstore(0x38,0x17) /* 0x17 is the byte at the memory address pointed to by R and is equal to 0x12 and 0x3. The last result is rounded and subtracted from 0x40. 0x40 should be 0x2011 and 0
