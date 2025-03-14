pragma solidity ^0.8.0;
contract C {
    L l;
    L x;
    L y;
    byte x;
    uint16 a;
    uint xn = 1e254;
    uint yn = 2**254 - 1;
    function f() public pure {
        x = L({a: xn});
    }
}
