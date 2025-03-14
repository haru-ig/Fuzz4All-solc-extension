pragma solidity ^0.8.0;
contract Mutated {
    function mutated() public { }
}
pragma solidity ^0.8.0;
contract MutatedFallback {
    function mutatedFallback() public payable {
        MutatedFallback mutatedFallback = new MutatedFallback;
    }
}
