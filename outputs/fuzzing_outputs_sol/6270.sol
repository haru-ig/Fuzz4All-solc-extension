pragma solidity ^0.8.0;
contract Mutant1Mutator {
    event Muted(address indexed addressCaller, address indexed mutant);
    bool mutant;
    bool mutant2;
    constructor() {
    }
    function trigger() public { mutant = true; mutant2 = true; emit Muted(msg.sender, address(this)); }
    function mutantFunction() public {
        require(block.timestamp > 1, "The function trigger should not be called before the second time of the mutant.");
        if (mutant) {
            mutant = false;
            emit Muted(msg.sender, address(this));
            require(block.timestamp > 1, "The function trigger should not be called before the second time of the mutant.");
        }
        if (mutant2) {
            mutant2 = false;
            require(block.timestamp > 1, "The function trigger should not be called before the second time of the mutant.");
            emit Muted(msg.sender, address(this));
        }
    }
}
