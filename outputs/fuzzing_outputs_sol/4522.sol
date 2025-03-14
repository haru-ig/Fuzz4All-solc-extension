pragma solidity ^0.8.0;
contract SemanticDifferent2 {
    function mutate() public pure returns(uint256) {
        return 13;
    }
}
contract SemanticDifferent3 {
    function mutate() public pure returns(uint256) {
        return mutate(uint256(0));
    }
    function mutate(uint256 a) public pure returns(uint256) {
        return a;
    }
}
contract SemanticDifferent4 {
    function mutate() public pure reverts {}
}
contract SemanticDifferent5 {
    function mutate() public pure returns (uint, uint) {
        return (uint(0x2a06fd42903d7c2);
    }
}
