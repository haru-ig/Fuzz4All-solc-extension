pragma solidity ^0.8.0;
contract MutatedCaller {
    address public owner;
    function setOwner(address _owner) public {
        owner = _owner;
    }
    function call() public payable returns (uint) { if (msg.value!= 1 ether) throw; return 1; }
    function withdraw() public { if (msg.value!= 1 ether) throw; }
    function send15() public payable requires (msg.value >= 15 ether) returns (uint) { if (msg.value!= 15) throw; return 15; }
}

```
