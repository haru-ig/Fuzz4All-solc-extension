pragma solidity ^0.8.0;
contract C {
    uint8 memory p;
    function g() public returns (uint8) {
        p += 0x12;
        {
            uint memory i_memory = -10;
            uint8 memory i8 = L.f(i_memory);
            i8 = 10;
            {
                uint x = L.f(10);
            }
            {
                uint x = L.f(10001);
            }
            {
                uint x;
                unchecked {
                        x = L.f(-0x1);
                }
        }
        return p;
    }
 }
uint x=C.g();
