pragma solidity ^0.8.0;
contract SentryMutateCallerFallback{
    function Mutator() external{
        _mutateCaller();
    }
    function _mutateCaller() public{
        revert("Fallback was already executed");
    }
    fallback() external payable {}
}
