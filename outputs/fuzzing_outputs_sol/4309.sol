pragma solidity ^0.8.0;
contract MutatedContractFallbackCaller {
    function f(uint x, receive() payable) public {}
}

contract MutatedFallbackCaller is MutatedSimpleFallbackCaller, MutatedContractFallbackCaller {}
