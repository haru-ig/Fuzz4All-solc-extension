pragma solidity ^0.8.0;
contract Mutators {
    function test_3() public returns (uint256 res) {
    }
    function test_1(uint256 a, uint256 b) public returns (uint256 res) {
        res = a + b;
        a %= b;
    }
    function test02_2(uint256 a, uint256 b) public returns (uint256 res) {
        res = a + b;
        a %= b;
        b -= 1;
    }
    function test02_3(uint256 a) public returns (uint256 res) {
        res = a + 1;
        a %= res;
    }
    function test_3() public returns (uint256 res) {
        uint256 b = 3;
        res = a + b;
        a %= b;
        b -= 1;
    }
    function test () public returns (uint256 res) {
        uint256 a = 3;
        uint256 b = 3;
        res = test_3();
        res = test_1(a, b);
        res = test02_3(res);
        a %= b + res;
    }
}
