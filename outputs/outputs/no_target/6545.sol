pragma solidity ^0.8.0;
contract modifierC {
    function f() pure public returns (uint) {
        return 10;
    }
}
contract test {
    function f(uint x) public returns (uint) {
        (x + 0) / f();
        return 3000000;
    }
    function g() public returns (uint) {
        return 10;
    }
}
