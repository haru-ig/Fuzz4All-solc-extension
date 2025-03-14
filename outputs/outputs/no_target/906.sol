pragma solidity ^0.8.0;
contract SemanticMutation3 {
    function get()
        public
        pure
        returns (uint8 v)
    {
        v = 8;
        assert(v >= 8);
        v >>= 2;
        return v;
    }
    function get0()
        public
        pure
        returns (uint)
    {
        uint8 v;
        v >>= 1;
        return v;
    }
    function get1()
        public
        pure
        returns (uint160 f, uint256 z)
    {
        uint160 x;
        f = x++;
        z = (v << (999999999999)) | x;
        return v;
    }
    function get2()
        public
        pure
        returns (uint)
    {
        uint256 x;
        x = x + x * x;
        x = x - 100 + 25;
        return x / 65535;
    }

    function get5()
        public
        pure
        returns (uint8 a)
    {
        assert(a >= 8);

        a >>= 2;
        return a;
    }
    function get6()
        public
        pure
        returns (uint)
    {
        assert(a >= 8);
        uint8 a;
        a >>= 2;
        return a;
    }
    function get7()
        public
        pure
        returns (uint160 f, uint256 z)
    {
        uint160 x;
        f = x++;
        z = (v << (999999999999)) | x;
        return v;
    }
    function get8()
        public
        pure
        returns (uint)
    {
        uint256 x;
        x = x + x * x;
        x = x - 100 + 25;
        return x / 65535;
    }
    function get9()
        public
        pure
        returns (uint8 a)
    {
        a >>= 2;
        return a;
    }
    function get10()
        public
        pure
        returns (uint)
    {
        a >>= 2;
        return a;
    }
    function get11()
        public
        pure
        returns (uint160 f, uint256 z)
    {
        uint160 x;
        f = x++;
        z = (v << (999999999999)) | x;
        return v;
    }
    function get12()
        public
        pure
        returns (uint)
    {
        uint256 x;
        x = x + x * x;
        x = x - 100 + 25;
        return x
