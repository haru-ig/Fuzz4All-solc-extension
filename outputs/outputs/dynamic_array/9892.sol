pragma solidity ^0.8.0;
library SemanticTest_v7Lib {
    using SemanticTest_v7 for SemanticTest_v7.mint;

    function semantic_equal_v7() external pure returns (SemanticTest_v7.mint, uint) {
        return SemanticTest_v7.mint(0), 0;
    }

    function semantic_equal_v7a() external pure returns (SemanticTest_v7.mint, uint) {
        return SemanticTest_v7.mint(0), 0;
    }
}
