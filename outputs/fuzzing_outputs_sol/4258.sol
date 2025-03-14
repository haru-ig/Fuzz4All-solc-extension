pragma solidity ^0.8.0;
contract SemanticallyEquivalentCaller {
    function Mutator() public{
        SimpleFallbackCallerV2 _caller = new SimpleFallbackCallerV2();
        _caller.Mutator();
    }
}
