pragma solidity ^0.8.0;
contract A {
    function f(uint128 a) public {
        uint128 x;
        uint128 y;
        (x, y) = add(a);
    }
}
