pragma solidity ^0.8.0;
contract Semantic0016a {
    uint256 public constant max = 115;
    function funcToTest(uint256 a) private pure {
        if (a > max) {
            uint256 _ = a;
        }
    }
    function f1() public returns (uint256) {
        return funcToTest(max + 1);
    }
}
