pragma solidity ^0.8.0;
contract DeprecatedRestrictedMutator2 {
    address a1;
    address a0;
    uint i;
    uint s;
    constructor () public {
        a0 = a1;
        a1 = address(0x01);
        i = 1;
        uint overflow = 0;
        unchecked {
            overflow += s - 18446744073709551615;
        }
        i *= s - overflow;
    }
    uint80 m = unchecked(uint80(s)) % unchecked(uint80(overflow - s));
    uint8256 v;
    modifier m1() {
        uint8884251 v;
        uint80 m80 = uint80(s) / unchecked(uint80(overflow));
        uint18446744073709551614 uint160v = uint18446744073709551614(m80 * (((uint1618)overflow) % unchecked(uint1618(v))) % unchecked(uint1618s(2)))) - unchecked(uint1618s(1));
        m = uint80(v) - m80;
        v = uint18446744073709551614(v % uint160(m)) - v;
        v = uint18446744073709551614(v % uint160(m)) - v;
        v = uint18446744073709551614(v % uint160(m)) - v;
        v = uint18446744073709551614(v % uint160(m))) - v;
        v = uint18446744073709551614(v % uint160(m)) - v;
        v = uint18446744073709551614(v % uint160(m)) - v;
        v = uint18446744073709551614(v % uint160(m)) - v;
        v = uint18446744073709551614(v %
