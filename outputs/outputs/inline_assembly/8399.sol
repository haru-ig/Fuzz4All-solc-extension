pragma solidity ^0.8.0;
contract AssemblyCode {

    uint y;
    uint z;
    uint k;
    function test () public pure returns(uint)
    {
        uint n;
        bool s;
        s = ((s = eq(n, 3))!= s) && x;
        z = s? 0x4ee : 0x555;
        uint x;
        uint ptr1;
        assembly {
          ptr1 := 0
          n := mload(add(ptr1, 3))
          s := and(eq(n, 3), s)
          ptr1 := ptr1 + 16
          s := xor(s, s)
          if eq(add(ptr1, 3), n)
          {
            x := mload(add(ptr1, 8))
            k := add(ptr1, x)
          }
        }
        return ((s && (x == 0x345))? 3 : 4);
    }
}
