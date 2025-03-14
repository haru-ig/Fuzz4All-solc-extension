pragma solidity ^0.8.0;
contract Mutant4Mutator {
    event Muted(address indexed addressCaller, address indexed mutant);
    constructor() {
    }
    bool mutant;
    struct MyStruct {
        uint x;
    }
    function trigger() public {
        mutant = true;
        emit Muted(msg.sender, address(this));
    }
    function mutantFunction() public {
        require(block.timestamp > 0, "The function trigger should not be called before the first time of the mutant.");
        if (mutant) {
            emit Muted(msg.sender, address(this));
            mutant = false;
        }
    }
}
