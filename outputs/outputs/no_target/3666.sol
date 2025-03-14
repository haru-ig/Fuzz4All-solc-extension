pragma solidity ^0.8.0;
contract C {
    G private c;

    function f() public { c.b < value; }
    function f2() public { 1 > c.b < constantMax < uint160(1); }
}
contract D {
    H c;

    function f() public { c.b < value; }
    function f2() public { 1 > c.b < constantMax < uint160(1); }
}
contract E {
    bool c;

    function f() public { c < true; }
    function f2() public { 1 > c < false < uint160(0); }
}

pragma solidity ^0.8.0;
contract F {
    bool nonConstant;
    modifier m() { nonConstant = false; _; }
    bool c;

    function f() public m { c < true; }
    function f2() public { 1 > c < false < uint160(0); }
}
contract G {
    address c;

    function f() public { c < address(this); }
    function f2() public { 1 > c < address(1); }
}
contract H {
    uint constant constantMax = uint160(2**128 - 1);

    function f() public { 0 < constantMax < 1; }
    function f2() public { 1 > constantMax < uint160(1); }
}
