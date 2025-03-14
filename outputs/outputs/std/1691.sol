pragma solidity ^0.8.0;
contract Convert {
    string internal _string;
    function convert(uint a) public pure returns (string memory) {
        if (a < 10) return "" + a;
        switch (a) {
        case 10:
            return "10";
        case _1:
            return "1";
        case _10:
            return "10";
        case _100:
            return "100";
        case _1000:
            return "1000";
        default:
            return toString(a);
        }
    }
    function toString(uint a) public pure returns (string memory) {
        if (a < 2) return "0";
        if (a > 1000000000) return toString(a / _1000000000);
        if (a > 100000000) return toString(a /  _100000000) + "k";
        if (a > 1000000) return toString(a  / _10000000) + "m";
        if (a > 100000) return toString(a   / _1000000) + "b";
        if (a > 1000) return toString(a / _100000) + "t";
        if (a > 100) return toString(a / _10000) + "p";
        if
