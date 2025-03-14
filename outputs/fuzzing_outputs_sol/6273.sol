pragma solidity ^0.8.0;
contract Mutant4Mutator {
    event Muted(address indexed addressCaller, address indexed mutant);
    bool mutant;
    bool mutant2;
    constructor() {
    }
    function trigger() public { mutant = true; mutant2 = true; emit Muted(msg.sender, address(this)); }
    function mutantFunction() public payable {
        require(block.timestamp > 1, "The function trigger should not be called before the second time of the mutant.");
        if (mutant) {
            mutant = false;
        }
        if (mutant2) {
            mutant2 = false;
            emit Muted(msg.sender, address(this));
        }
    }
}
