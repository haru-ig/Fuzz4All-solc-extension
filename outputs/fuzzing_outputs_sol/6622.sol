pragma solidity ^0.8.0;
contract Mutated is MutatedFallback, Mutated {
    function mutated() public { }
}
