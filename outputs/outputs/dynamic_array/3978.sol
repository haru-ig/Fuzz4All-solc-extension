pragma solidity ^0.8.0;
contract C {
    struct S {
        uint[] arr;
    }
    S s;
    function f() public {
        s.arr[0] = 100;
    }
}
