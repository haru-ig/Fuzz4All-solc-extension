pragma solidity ^0.8.0;
contract third1 {
    uint8 x;
    function f() public pure {
        bytes x = "\x03\x01\x02\x09\x00";
        bytes memory y = "\x00";
    }
    function g() public pure {
        x ^= 0xAABBCCDDEEFF00CC;
    }
}

pragma solidity "0.8.0";
contract third {
    function f() public pure {
        bytes1 x = "\x00";
        bytes2 y = "\x00";
        bytes3 z = "\x00";
        bytes4 a = "\x00";
        uint x1 = 3;
        uint x2 = 6;
        bytes2 s1 = "\x04";
        bytes4 s2 = 4;
        address b = 0x123456789012345678901234567890123456789012345678901234567890122;
        address b1;
        bool x3 = false;
        bool x4 = true;
        bool x5 = true;
        bool x6 = false;
    }
}

pragma solidity "0.8.0";
contract third {
    function f() public payable pure {
        assembly {
        _ := add(110, 42)
        }
    }
}

pragma solidity >=0.7.0 <=0.9.0;
contract third {
    function third(uint x)
        public
    {
        constructor(bytes3 b) {}
        constructor(uint x, bytes3 b) {}
        constructor(uint a, uint b) {}
        constructor(bytes3[] b) {}
        constructor(bytes3[] b, bytes3 b) {}
        constructor(int x) {}
        constructor(address a) {}
        constructor(address a, uint x) {}
        constructor(address a, bytes3 b) {}
        constructor(address a, bytes3 b, bytes3 b1) {}
        constructor(address a, bytes3 b, bytes3 b1, bytes3 b2) {}
        constructor(address a, uint x, uint x) {}
        constructor(address a, uint a, uint a) {}
        constructor(address a, uint a, uint a, uint b) {}
        constructor(uint a, address a) {}
        constructor(uint a, address a, uint a) {}
        constructor(address a, uint x, uint x, uint x) {}
        constructor(uint x, address a) {}
        constructor(uint x, address a, uint x) {}
