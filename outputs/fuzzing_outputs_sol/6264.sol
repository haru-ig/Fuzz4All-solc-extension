pragma solidity ^0.8.0;
contract Mutant5Mutator {
    event Muted(address indexed addressCaller, address indexed mutant);
    bool mutant;
    constructor() {
    }
    bool mutant2;
    function trigger() public { mutant = true; mutant2 = true; emit Muted(msg.sender, address(this)); }
    function mutantFunction() public payable {
        require(block.timestamp > 0, "The function trigger should not be called before the first time of the mutant.");
        if (mutant) {
            emit Muted(msg.sender, address(this));
            mutant = false;
        }
        if (mutant2) {
            mutant2 = false;
            emit Muted(msg.sender, address(this));
        }
    }
}
