pragma solidity ^0.8.0;
contract FallbackMutator {
    function _fallback();
    function mutated_fallback() private {
        mutated_fallback();
    }
}
address payable FallbackMutator.fallbackMutator = payable address(new Caller);
