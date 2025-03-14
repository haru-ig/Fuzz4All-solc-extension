pragma solidity ^0.8.0;
contract Mutated_2_3_2 {

    function test(uint x) public pure returns (uint) {
        uint j = x;
        uint z = 0;
        uint w = 0;
        uint r = 0;
        asm {
            r := mul(x,0x4783)
            r := mul(x,0x793d)
            r := mul(x,0x288b)
            r := mul(x,0x14b5)
            r := mul(x,0x24ca)
            r := mul(x,0x30ae)
            r := mul(x,0x8399)
            r := mul(x,0x7b7d)
            r := mul(x,0x6f3b)
            r := mul(x,0xaae4)
            r := mul(x,0x82e6)
            r := mul(x,0x893c)
            r := mul(x,0xd3f7)
            r := mul(x,0x01c4)
            r := mul(x,0x33c0)
            r := mul(x,0x63f4)
            r := mul(x,0x4d57)
            r := mul(x,0xa5b1)
            r := mul(x,0x3574)
            r := mul(x,0x8d2f)
            r := mul(x,0xb5a7)
            r := mul(x,0x4598)
            r := mul(x,0x79a0)
            r := mul(x,0x4d74)
            r := mul(x,0x3d29)
            r := mul(x,0x90eb)
            r := mul(x,0x9957)
            r := mul(x,0x5638)
            mstore(0x0,j)
            j := mload(0x0)
            r := xor
