pragma solidity ^0.8.0;
contract SemanticMutation10 {
    function test1()
        public
        pure
    {
        uint16[10] memory x = uint16[10](0xFF_FF_FF_FF_FF_FF);
        uint16[10] m;
        uint16 m2;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation11 {
    function test2()
        public
        pure
    {
        uint m = uint16(0xFF_FF_FF_FF_FF_FF);
        uint m2 = uintm;
        uintm = uint64(0xFFFF_FFFF_FFFE_FFFF);
    }
}
