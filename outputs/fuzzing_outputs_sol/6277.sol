pragma solidity ^0.8.0;
contract MutantFallback2 {
    event Muted(address indexed mutant, address indexed addressCaller);
    address mutant;
    constructor() {
    }
    function setMutantAddress(address _mutant) public { mutant = _mutant; }
    function mutantFunction2() public payable {
        msg.sender.transfer(1 ether);
        emit Muted(mutant, msg.sender);
    }
    function mutantFunction() public payable {
        require(msg.value == 1, "Amount in Ether was not 1.");
        emit Muted(mutant, msg.sender);
    }
}
