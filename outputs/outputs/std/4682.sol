pragma solidity ^0.8.0;
contract A {
    bytes32 public f1;
    bytes32 public f2;
    bytes32 public f3;
    bytes32 public f4;
}
contract B {
    function h() public pure returns (uint64) {
        return 13873621372619230904;
    }
}
contract C {
    function f() public pure returns (uint256) {
        return 22213433668971679709;
    }
}
contract D is A, B, C {
    function g() public pure returns (uint256) {
        return 22213433668971679709 * 22213433668971679709 / 22213433668971679709;
    }
}
contract E is A, B, C, D {
    function h() public pure returns (uint64) {
        return D.f() * D.f() * D.f() * D.f() + A.f() + B.f();
    }
    function i() public pure returns (uint64) {
        return D.f() / D.f() / D.f() / D.f() + A.f() + B.f();
    }
    function j() public pure returns (uint64) {
        return D.f() % D.f() % D.f() % D.f() + A.f() + B.f();
    }
    function k() public pure returns (uint256) {
        return D.f() * D.g() * D.g() * D.g() / D.f() + A.f() + B.f();
    }
    function l() public pure returns (uint256) {
        return D.f() / D.g() / D.g() / D.g() / D.g() + A.f() + B.f();
    }
    function m() public pure returns (uint256) {
        return D.f() % D.g() % D.g() % D.g() / D.f() + A.f() + B.f();
    }
    function n() public pure returns (uint64) {
        return D.f() * D.f() / D.g() / D.g() + A.f() + B.f();
    }
    function o() public pure returns (uint256) {
        return D.f
