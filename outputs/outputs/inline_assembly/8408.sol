pragma solidity ^0.8.0;
contract MutatePrevious
{
    uint constant z = 0xAB;
    uint constant x = 0xCD;
    uint constant w = 0xEF;
    uint constant y = 0x78;
    uint constant r = 0x9C;
    uint constant z2 = 0x53;
    uint constant w2 = 0x63;
    uint constant p = 0x12;

    function test() public returns(uint)
    {

        uint x2;
        assembly
        {
            let ptr1 := 0
            let ptr2 := 0
            let j := ptr1
            let m := ptr2
            let r := mload(ptr1)
            let r2 := and(r, not(x))

            if eq(or(not(eq(z, r2))), eq(z, mload(ptr2))), 0)
            {
                r2 := mload(ptr1)
                r := add(r, r)
                r := add(r, r)
                add(z, z)
                add(z, r)
                mstore(ptr2, r)
                mstore(ptr1, r2)
            }
        }
        return 0x9E;
    }
}
