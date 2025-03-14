pragma solidity ^0.8.0;
contract MutantFallback {
    event Muted(address indexed mutant, address indexed addressCaller);
    address immutable mutant;
    constructor() {
    }
    function mutantFunction() public payable {
        require(msg.value == 1, "Amount in Ether was not 1.");
        emit Muted(mutant, msg.sender);
    }
    function setMutantAddress(address _mutant) public { mutant = _mutant; }
}
