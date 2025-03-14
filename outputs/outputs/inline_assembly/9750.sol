pragma solidity ^0.8.0;
contract MutatedYulContract3 {
    uint internal contractCounter;
    struct { uint z; uint a; uint x; } internal memory;
    uint constant c = 0x00;
    function multiply(uint z) public returns (uint) {
      uint x;

        memory.z = z;
        memory.x = c * 10;

        uint y128t;
        uint8 lowmem = 0x80;

        unsafe {
          y128t: if (c!= 0x00)
            y128t = 0x8080808080808080;
        }


        uint7 bit1 = 0x20;

        uint4 bit0;
        uint4 bitmask;

        require((memory.z & bitmask) == 0);

        bit0 = memory.z >> 0;
        bitmask = 0x00;
        if (!lowmem)
          bit0 &= bitmask;

        bit0 = memory.z >> 1;
        if (bit0 == memory.z >> 2)
          bitmask = 0x00;
        bitmask = 0x00;

        bit0 = memory.z >> 3;
        if (bit0!= memory.z >> 4)
          bit0 &= bitmask;
        bit0 &= memory.z >> 5;
        if (memory.z >> 6)
          bit0 &= memory.z >> 7;

        bit0 = memory.z >> 8;
        if (bit0!= memory.z >> 9)
          bit0 &= bitmask;
        bit0 &= memory.z >> 10;

        bit0 = memory.z >> 11;
        if (!lowmem)
          bit0 &= bitmask;

        x = memory.x + c;

      return x >= 0x10? x : x - c;
    }
}
