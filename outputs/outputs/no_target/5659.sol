pragma solidity ^0.8.0;
contract CoCPublic{
    function g3(uint256 a) public {
        uint256 b_ = 0;
        b_ = 5;
        b_ = b_ + 5-(b_+5);
    }
}

contract CoCTests {
    function test6() public returns (uint) {
        uint256 a = 0;
        uint256 b_ = 0;
        a = a + 5;
        return a = a + b_;
    }
    function test7() public returns (uint) {
        uint256 a = 0;
        uint256 b_ = -5;
        return a = a - b_;
    }
    function test8() public returns (uint) {
        uint256 a = 0;
        uint256 b_ = 5;
        return!(a = a - b_);
    }
    function test9() public returns (uint) {
        uint256 a = 0;
        uint256 b_ = 5;
        return!(a <= b_);
    }
    function test13() public returns (uint) {
        return!(uint256(-5) > uint256(5));
    }
}
