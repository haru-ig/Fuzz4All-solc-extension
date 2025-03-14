pragma solidity ^0.8.0;
contract Mutated {
    function mutated() public { }
}
contract MutatedFallback {
    function mutated() public fallback(address) { }
}
