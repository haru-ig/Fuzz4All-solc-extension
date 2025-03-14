pragma solidity ^0.8.0;
contract SemanticMutation13 {
    function test0()
        public
        pure
        returns (uint64)
    {
        uint64 x = 0;
        for (uint24 i = 0; i < 10; i += 1) {
            x = x + 10;
        }
        return x;
    }
}
contract SemanticMutation14 {
    function test0()
        public
        pure
        returns (uint64)
    {
        uint160 x = 0;
        for (uint24 i = 0; i < 10; i += 1) {
            x = x + 10;
        }
        return x;
    }
}
contract SemanticMutation15 {
    function test0()
        public
        pure
        returns (uint64)
    {
        unsafe {
            uint64 x = 0;
            for (uint24 i = 0; i < 10; i += 1) {
                x = x + 10;
            }
            return x;
        }
    }
}
