pragma solidity ^0.8.0;
contract ComplexityExample {

    function f() view public returns (uint256 m) {
        m = value;
        return m;
    }

    function g() internal returns (uint256 m) {
        m = value;
        return m;
    }

    function h() external returns (uint256 m) {
        m = value;
        return m;
    }

    function i() view public returns (uint256 m) {
        m = value;
        return m;
    }
}
