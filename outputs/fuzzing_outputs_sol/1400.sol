pragma solidity ^0.8.0;
contract MutatedFallbackExample{
    function mutated() public{
        bytes4 funcSignature = 0x697b26ea;
        fallback(funcSignature);
    }
}
