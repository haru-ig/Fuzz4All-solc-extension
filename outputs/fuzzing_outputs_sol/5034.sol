pragma solidity ^0.8.0;
contract MutatingFallback {
    function mutate()
        public
        pure
        payable
    {
        Fallback immutable _;
    }
}
