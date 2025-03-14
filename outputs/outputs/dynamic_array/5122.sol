pragma solidity ^0.8.0;
contract Test93M {
    struct A {
        uint8[10] array;
    }
    function f() public pure {
        uint8[10] memory a;
    }
    function g() public pure {
        A memory a;
    }
}
pragma solidity ^0.8.0;
