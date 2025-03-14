pragma solidity ^0.8.0;
contract Semantic_0029 {
    function semanticSame() public pure returns (string memory s) {
        s = "b";
    }
    function semanticDifferent() public pure returns (string memory s) {
        s = s + "b";
    }
}
