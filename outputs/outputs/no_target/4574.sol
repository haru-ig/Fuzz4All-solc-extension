pragma solidity ^0.8.0;
contract CT1 {
    function f() public pure {
        uint128 x = -5;
    }
}
contract CT2 {
    function f() public pure {
        uint128 x = -2;
    }
}
constructor C1() public {
    CT2 x;
    CT1 y;
    x = 0;
    L.f();
}
