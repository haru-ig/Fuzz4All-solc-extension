pragma solidity ^0.8.0;
library TestLib {
    struct ImmutableLib {
        uint8 immutable constant immutable_uint8_1;
        uint8 immutable constant immutable_uint8_2 [2];
        uint8 immutable constant immutable_uint8_3;
        uint8 immutable constant immutable_uint8_4;
    }
}
contract A {
    function test() public pure {
        TestLib.ImmutableLib memory immutable = TestLib.ImmutableLib (0x01, TestLib.ImmutableLib.immutable_uint8_2, immutable_uint8_1, immutable_uint8_3);
        TestLib.ImmutableLib memory immutable2 = TestLib.ImmutableLib (immutable.immutable_uint8_2, TestLib.ImmutableLib.immutable_uint8_2, immutable_uint8_4, immutable_uint8_3);
        immutable.immutable_uint8_2;
        immutable2.immutable_uint8_2;
        TestLib.ImmutableLib memory immutable3;
        immutable3.immutable_uint8_2;

        (integer constant i8_1) immutable (32);
        immutable.uint8_4;
    }
}
