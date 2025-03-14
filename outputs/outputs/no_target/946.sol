pragma solidity ^0.8.0;
contract SemanticMutation8 {
    struct MyStruct {uint8 field_0; uint256 field_1;}
    function test0()
        public
        pure
        returns (MyStruct memory s)
    {
        s.field_1 = 11.0;
        s.field_0 := 0xf0;
        assert (s.field_0 == 0x3f);
        MyStruct s1 = s;
        s1.field_1 := 0xfff0;
        s1.field_0 := uint(13);
        assert (s1.field_0 == 0xf0);
        assert (s1.field_1 == 0xfff0);
        s1 := s;
        int(13);
        int(0xff);
        address(int(0x78));
        MyStruct s2;
     }
}

contract SemanticMutation {
    function test()
        public
        pure
        returns (uint i)
    {
        assert(i >= 0 && i < 256);
        uint256 a = 2 ** 128 - 1;
        uint8 b = 0xff;
        a--;
        assert(a == (1 << 127) - 2);
        uint f = 23 / 4;
        bytes1 c = "c";
        c[3] = 119;
        bytes10 d =  bytes10("ab");
        uint8 e = 0x37;
        uint256 f1 = 31397995;
        uint32 i_32 = 31397995;
        uint32[3] memory p;
        p = uint32[]( 1, 2, 3 );
        p[0] = 0xd1d2d3;
        p[1] = 0xffffff;
        p[2] = uint32((uint(11111) << 8) + uint(0xff));
        p[0] = 500001;
        assert (p[0] == 500001);
        p[2] = 0xffffffff;
        p;
        f = int(0xfffe);
        f;
        assert (f < int(0xffff));
        i = 2 ** 128 - 1;
        i;
        i + 1;
        f = int(0xffffffff);
        uint i1 = int256(1e112);
        uint j1 = uint256int(100005000000);
        i1 * f;
        j1 * f;
        i32 + 1;
        uint32 k - 2 = 0xfffffffffffff;
        uint256
