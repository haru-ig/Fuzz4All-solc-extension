pragma solidity ^0.8.0;
contract SemanticDifferent8 {
    function mutate() public pure {
    }

    fallback () external { revert("fallback"); }
}
