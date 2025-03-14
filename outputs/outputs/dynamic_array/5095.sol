pragma solidity ^0.8.0;
contract Test94B1 {
    struct A {
        uint256 array;
    }
    function f() public pure {
    }
    function g() public pure {
    }
    function h() public pure {
        h();
        h();
        h();
    }
    function i() public pure {
        i();
    }
    function j() public pure {
        j();
        j();
    }
}

pragma solidity ^0.6.0;
contract Test94D3 {
    struct A {
        uint256 array;
    }
    function f() public pure {
    }
    function g() public pure {
        A memory a = A(
            [0,
            0,
            0,
            0,
            0,
            0,
            0]
        );
    }
    function h() public pure {
        h();
    }
    function i() public pure {
        i();
    }
    function j() public pure {
        j();
    }
}
