pragma solidity ^0.8.0;
contract Mutated {
    function mutated() public { }
    function mutated(uint _amount) public { }
}
contract MutatedFallback {
    function mutated() public payable { }
    function mutated(uint _amount) public payable { }
}
