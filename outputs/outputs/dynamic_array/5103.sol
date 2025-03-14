pragma solidity ^0.8.0;
contract TestBB47 {
    struct A {
        uint256 [2];
    }
    function f() public pure {
        A memory t;
        require(t.array[1] == 0);
    }
    function g() public pure {
    }
    function h() public pure {
        h();
    }
    function i() public pure {
    }
    function j() public pure {
    }
}
