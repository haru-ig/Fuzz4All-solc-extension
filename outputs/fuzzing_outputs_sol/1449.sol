pragma solidity ^0.8.0;
contract SemanticallyEquivalentExample{

    struct FallbackData{
        uint _fallbackCount;
    }
    fallback(FallbackData memory fdd) public;
    fallback() payable public;

    function sematicalEquivalentFallback() public pure {
        fdd.fallbackCount++;
    }
}
