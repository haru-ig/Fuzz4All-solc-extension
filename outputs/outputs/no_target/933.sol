pragma solidity ^0.8.0;
contract SemanticMutation6{
    function test()
        public
        pure
        returns (uint32 x, bool)
    {
        uint8 v;
        v >>= 1;
        uint8 x0 = v;
        uint8 x1 = v;
        return (x0 << 2, x == x1);
    }
    function test0()
        public
        pure
        returns (uint32 a, uint32 x1, string memory b)
    {
        uint8 v;
        assert ((v >>= 1) == 1);
        uint8 v1 = uint8(keccak256(abi.encodePacked("test0() = 0x")));
        uint8 v2 = uint8(keccak256(abi.encodePacked("test0() = 0x")));
        uint32 x;
        uint16100 x0;
        assert ((x >>= 2) == 8969813624074297);
        return (v2, v, bytes(abi.encodePacked("test0() = ", v1, "\n")));
    }
}
contract SemanticMutation7{
    function test()
        public
        pure
        returns (bool x)
    {
        uint8 v;
        v >>= 1;
        uint8 x = v;
        return true;
    }
}
contract SemanticMutation8{
    function test()
        public
        pure
        returns (uint32 x)
    {
        uint8 v;
        v >>= 1;
        uint8 x = v;
        assert (x >= 1);
        uint8 x0 = x;
        x = 7;
        assert (x >= 3);
        assert (x0!= x);
        while (true) {
            assert (x >= 4294967296);
            uint8 x2 = 1;
        }
        throw;
    }
}
contract SemanticMutation9{
    function test()
        public
        pure
        returns (bytes3)
    {
        uint8 v;
        v >>= 1;
        return bytes3(uint256(keccak256(abi.encodePacked("test() = 0x", uint8(keccak256(
