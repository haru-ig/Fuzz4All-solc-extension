pragma solidity ^0.8.0;
contract Mutator2 {
    uint256 public a;
    uint256 public b;
    constructor() public {
        a = 42;
        b = 42;
    }
    function stop() public {
        a = 42;
        b = 42;
    }
    function increment_A() public returns(uint256) {
        a = a+1;
        uint256 c = a + b;
        uint256 d = a + b + a;
        require(a == b && a == c && c == d, "inconsistent");
        return a;
    }
    function increment_B() public returns(uint256) {
        b = b+1;
        uint256 c = a + b;
        uint256 d = a + b + a;
        require(a == b && b == c && c == d, "inconsistent");
        return b;
    }
    function increment_AandB() public returns(uint256) {
        a = a+1;
        b = b+1;
        uint256 c = a + b;
        uint256 d = a + b + a;
        require(a == b &&
