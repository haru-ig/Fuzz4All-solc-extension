pragma solidity ^0.8.0;
contract SemanticMutation9 {
    function test0()
        public
    {
        uint16 x = 1;
        uint16 y = uint16(x >> 1);
        assert (y <= 65535);
        x = x >> 1;
        assert (x >= 1);
        x = x - 2;
        assert (x == 0);
    }
    function test1()
        public
    {
        uint16 x;
        uint y;
        x = uint(uint16(x)!= uint(uint16(0)));
        assert (x == 0);
        assert (y == 1);
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation10 {
    function test0()
        public
    {
        uint16 x = 0;
        uint16 y = x >> uint16(1);
        assert (y <= 65535);
        x = x - 1;
        y = y + x;
        assert ((uint16(y & uint16(-32)) == uint16(0)) && (uint16(y & uint16(32)) == uint16(1)));
    }
}
