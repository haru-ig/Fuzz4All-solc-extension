pragma solidity ^0.8.0;
library SafeMath{
    function div(uint256 a, uint256 b) internal pure returns(uint256) {
        return a / b;
    }
    function mul(uint256 a, uint256 b) internal pure returns(uint256) {
        return a * b;
    }
    function sub(uint256 a, uint256 b) internal pure returns(uint256) {
        return a - b;
    }
    function add(uint256 a, uint256 b) internal pure returns(uint256) {
        return a + b;
    }
}



contract ArrayTest {
    Array test;
    function setup() {

        test = new Array(1, 2, 3, 5);
    }
}

contract Test {
    ArrayTest test;
    function Test() {
        test = new ArrayTest();
        test.setup();
    }
}
