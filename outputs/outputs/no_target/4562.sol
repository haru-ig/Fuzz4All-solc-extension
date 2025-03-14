pragma solidity ^0.8.0;
contract E {
    function f() public pure {
        uint256 x = -1;
    }
}
contract A {
    using L as A;

    function f() public pure {
        L.f();
    }
}
contract B {
    use E;

    function f() public pure {
        E.f();
    }
}
contract C {
    using A from L;
    using E from E;

    function f() public pure {
        A.f();
        E.f();
    }
}
