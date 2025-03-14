pragma solidity ^0.8.0;
contract SolveAssembly5
{
    function test() public pure returns (uint) {
        uint z = 0x456;
        uint k = 0;
        uint z_z = 0;

        uint ptr1 = 0;
        uint l = 4;
        uint r = 0x123;
        uint a = 0x456;
        while (true) {
            uint r_l = 0;
            uint r_ptr1 = 0;
            uint k_r = 0;
            uint k_ptr1 = 0;
            uint ptr2 = 0;
            uint a_ptr1 = 0;
            uint a_ptr2 = 0;

            assembly
            {
                l := mload(ptr1)
                a := mload(ptr2)
                r := mload(add(ptr1, l))
                r_l := mload(r)
                ptr2 := add(ptr2, l)
                ptr1 := add(ptr1, l)
                r_ptr1 := add(r_ptr1, l)
                r_ptr1 := add(r_ptr1, r)
                ptr1 := add(ptr1, 2)

                if ge(r_ptr1, r_l)
                {
                    k := sub(r_ptr1, l)
                    k_r := sub(r_ptr1, r)
                    k_ptr1 := sub(ptr1, r_l)

                    if eq(k_r, a_ptr1)
                    {
                        k_r :=
