pragma solidity ^0.8.0;
contract K {
    uint a;
    uint d;
    function q() public pure {
    }
    function m() public pure {
        a = a + 3;
    }
}

pragma solidity ^0.8.0;
contract K {
    uint public b;
    uint internal c;
    function q() public pure {
    }
    function m() public pure {
        a = a + 3;
    }
    function n() public pure {
        a = a + 3;
        b = (b + uint(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff));
    }
    function o() public pure {
        c = a + 3;
        bool i = b > 3;
    }
    function p() public pure {
        a = a;
    }
    function r() public pure {
        a = (a + 8) / 8;
    }
}
