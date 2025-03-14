pragma solidity ^0.8.0;
contract Mutant5Mutator {
    event Muted(address indexed addressCaller, address indexed mutant);
    constructor() {
    }
    bool mutant;
    function trigger() public {
        mutant = true;
        emit Muted(msg.sender, address(this));
    }
    function mutantFunction() public pure {
        mutant = false;
    }
}
