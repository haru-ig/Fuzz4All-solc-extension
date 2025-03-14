pragma solidity ^0.8.0;
contract SemanticDifferent6 {
    function mutate() public pure {
        SemanticDifferent5(0).mutate();
    }
}
