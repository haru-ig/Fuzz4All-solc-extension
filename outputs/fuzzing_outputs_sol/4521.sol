pragma solidity ^0.8.0;
contract SemanticDifferent2 {
    struct Result {
        uint256 _1;
        uint256 _2;
    }

    function mutate() public pure returns (Result memory _1, Result memory _2) {
        revert();
    }
}
