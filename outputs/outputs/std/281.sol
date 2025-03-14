pragma solidity ^0.8.0;
contract Mutator {
    struct Mutated {
        uint x;
        Mutator m;
    }
    bool constant trueValue = true;
    uint constant falseValue = 0;
    uint constant oneValue = 1;
      uint8 constant byteMax = 0xFF;
    uint constant byteMin = 0x00;
    uint constant byteMid = 0x01;
    uint constant byteMask = 0xFF;
    struct Mutated {
        uint8 y;
        uint16 z;
    }
    bool constant trueValue = true;
    uint constant falseValue = 0;
    uint constant oneValue = 1;

  uint constant byteMax = 0xFF;
    uint constant byteMin = 0x00;
    uint constant byteMid = 0x01;
    uint constant byteMask = 0xFF;
    uint constant uintMax = 0xFFFFFFFFFFFFFFFF;
    uint constant uintMin = 0x000000000000000000000000000000000;
    struct Mutated {
        uint8 z;
    }

    Mutated constant data = struct Mutated(uint8(oneValue), uint16(byteMask));
}
