pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV4 {
    function Mutator() public {
        _mutateCaller();
    }
    function _mutateCaller() internal returns (bool) {
        _mutateCallerFallback();
        return true;
    }
    function _mutateCallerFallback() internal returns (bool) {
        throw;
    }
}
