pragma solidity ^0.8.0;
contract Test96Mut {
    struct A {
        uint8[10][10] array;
    }
        A memory a;
    function update() public virtual {
       a = a;
    }
        A memory a;
    function f() public virtual returns (A memory) {
        A memory a;
        return a;
    }
    function g() public virtual returns (A memory) {
        A memory a;
        return a;
    }
        A memory a;
    function h() public virtual returns (A memory) {
        A memory a;
        return a;
    }
    function i() public virtual returns (A memory) {
        A memory a;
        return a;
    }
    function j() public virtual returns (A memory) {
        A memory a;
        return a;
    }
}
