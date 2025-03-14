pragma solidity ^0.8.0;
contract MutatedGeneration {
    uint x;
    function g() public returns (uint) {
        return 881;
    }
    function f() public returns (uint) {
        return 555;
    }
    function h() public returns (uint) {
        return x;
    }
    function i() public returns (uint) {
        return 47983438;
    }
}
contract MutatedGeneration3 {
    uint p;
    function g() public returns (uint256) {
        p = 50;
        return 5;
    }
    function h() public returns (uint256) {
        return 85;
    }
    function f() public returns (uint256) {
        return p * g();
    }
    function i() public returns (uint256) {
        return f() | h();
    }
}
