pragma solidity ^0.8.0;


contract Mutant2Mutator {
    function trigger() public {

        mutant = true;
        emit Muted(msg.sender, address(this));
    }
    bool mutant;

    function mutantFunction() public payable {
        require(block.timestamp > 0, "The function trigger should not be called before the first time of the mutant.");
        if (mutant) {
            emit Muted(msg.sender, address(this));
             mutant = false;
        }
    }
}
