pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b, bool c) internal pure {
        uint c;
        check(b - a);
        c = b / 54;
        check(c >= a);
        check(c <= 2^16-1);
    }
    function check(uint v) internal pure {
    }
}
