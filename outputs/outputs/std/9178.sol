pragma solidity ^0.8.0;
contract NewMutation {
    function mutate2() pure public returns (uint8) {
        return 78;
    }
}
contract MutatedProgram {
    function mutate() pure public returns (uint256) {
        uint64 a = 2048;
        uint64 b = 143;
        uint256 c = a + b;
        uint8 d = a - 1;
        uint16 e = a / 3;
        uint8 f = a ** 2;
        uint16 g = a % 9;
        uint8 h = a >> 1;
        uint32 i = "f".length();
        uint8 j = 1 / 2;
        uint8 k = (uint8) (0xDEAD);
        uint16 l = (uint16) (0xDEAD);
        uint8 m = 128 / 2;
        uint8 n = 128 % 2;
        uint32 p = 1ul < a;
        uint32 q = a > (18446744073709551615 ul);
        uint32 r = a ^ (a - (1 ul));
        uint32 s = a << 1;
        return 100;
    }
}
pragma solidity ^0.7.0;
contract MutatedProgram {
    function mutate() pure public returns (uint256) {
        return 3456;
    }
}
