pragma solidity ^0.8.0;
interface IAddressProxy {
    address getAddress();
}
contract SemanticMutation10{
    function test()
        public
        pure
        returns (address x)
    {
        x = IAddressProxy(IAddressProxy(msg.sender)).getAddress();
    }
}
contract SemanticMutation11{
    function test0()
        public
        pure
        returns (address x)
    {
        address x0 = msg.sender;
        address x1 = x0;
        assert (x1 == x0);
        x1 >>= 1;
        uint32 z;
        z >>= 31;
        address x2 = x0;
        address x3 = x0;
        assert (x2 == x3);
        address x4 = 0x00012321;
        uint32 tmp0_;
        tmp0_ >>= 54;
        address x5 = uint160(tmp0_);
        address tmp1_;
        tmp1_ >>= 90;
        uint32 n;
        uint8 k;
        uint8 n0;
        uint160 tmp2_;
        tmp2_ >>= 77;
        uint8 x0 = uint8(uint160(tmp2_));
        assert (tmp0_ >> x0 == x0);
        assert (n << x0 == n0);
        x0 = address(0x00012321);
        assert (0x00012321 == uint160(x0));
        uint32 a;
        a >>= 4;
        a >>= 17;
        a >>= 60;
        a >>= 90;
        uint32 b;
        b >>= 1;
        a >>= b;
        a -= x0;
        for (int i = 0; i < 0; i = 0) {
            n = a >>= 4;
            assert (a == uint32(uint160((uint32(uint160(uint8(n)) << (((n17) << ((uint8(n) * n) >> 16) - uint8(uint160((uint32((uint8(n) - 1)) << 53)))) >>
