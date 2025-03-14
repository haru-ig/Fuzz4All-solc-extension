pragma solidity ^0.8.0;
contract NewSemantics {
    function newsemantics() public pure returns(uint256) {
        NewSemanticsFallback newF = NewSemanticsFallback("fallback");
        return newF.get();
    }
}
