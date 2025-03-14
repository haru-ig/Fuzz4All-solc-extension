pragma solidity ^0.8.0;
contract Test94F4 {
    struct A {
        uint16 array;
    }
    function test() public pure {
        A a;
        a.array;
    }
    function h() public pure {
        test();
    }
}
