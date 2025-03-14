pragma solidity ^0.8.0;
contract Mutant4Mutator {
    event Muted(address indexed addressCaller, address indexed mutant);
    constructor() {
    }
    bool mutant;
    function trigger() public {
        mutant = true;
        emit Muted(msg.sender, address(this));
    }
    function mutantFunction() public payable {
        require(block.timestamp > 0, "The function trigger should not be called before the first time of the mutant.");
        if (mutant) {
            emit Muted(msg.sender, address(this));
            mutant = false;
        }
    }
}
