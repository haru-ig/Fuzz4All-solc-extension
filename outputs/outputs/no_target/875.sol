pragma solidity ^0.8.0;
contract SemanticMutation9 {
    uint immutable uintN = uint(16);
    function get()
        public
        pure
        returns (uint)
    {
        uint x = (uintN + 1) ^ (uintN >> 16);
        uint y = (uintN % (uintN * 2)) + 1;
        uint z = x | y;
        return z
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation10 {
    function get4()
        public
        pure
        returns (uint)
    {
        uint x = (8 + -31);
        uint x = uint(8 + -31);
        uint y = uint(31 + -8);
        uint y = uint160(31 + -8);
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation11 {
    function get5()
        public
        pure
        returns (uint)
    {
        uint y = bytes1();
        uint w = bytes1(0x01);
        uint u = bytes1(0x00000000000000000000000000000000000000000000000000000000000023);
        uint i = bytes1(0x010203040506070800);
        uint c;
        uint c = w.length;
        uint c = u.length;
        uint c = y.length;
        uint c = i.get();
        uint c = i.get(0x67);
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation12 {
    function get6()
        public
        pure
        returns (uint)
    {
        uint y = 128;
        uint c = bytes1((abi.encodePacked("\x01"))[0]) == y;
        uint c = bytes1((abi.encodePacked("\x01"))[0].length + 1) >= y;
