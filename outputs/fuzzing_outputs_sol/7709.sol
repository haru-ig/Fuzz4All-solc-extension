pragma solidity ^0.8.0;
contract MutatedSemantics {
    function call(MutatedSemanticsFallback) public pure { revert(); }
    function call2(MutatedSemanticsFallback, uint256, bytes32) public pure { revert(); }
}
