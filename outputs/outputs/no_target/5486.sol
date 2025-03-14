pragma solidity ^0.8.0;
contract O {
    function f() public pure {
        O.y.value(uint(2 ** 31) - 1)();
    }
}
