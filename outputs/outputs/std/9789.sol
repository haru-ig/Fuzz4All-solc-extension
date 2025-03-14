pragma solidity ^0.8.0;
contract Add {
    uint256 public x;
    uint256 constant y = 9;
    function testMathFunctions(uint256 a, uint256 b) public pure {
        x = Math.add(a, b);
    }
}
contract Mutate {
    uint256 public x;
    uint256 constant y = 10;
    function testMathFunctions(uint256 a, uint256 b) public pure returns (uint256) {
        x = Math.add(a, b);
        return x;
    }
}
