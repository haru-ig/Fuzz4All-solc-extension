pragma solidity ^0.8.0;
import "./Mutant5Mutator.sol";
contract Mutant5MutatorNoFallback {
    bool mutant;
    Mutant5MutatorNoFallback() {
        mutant = true;
    }
    function trigger() public {
        Mutant5Mutator instance = new Mutant5Mutator();
        mutant = true;
        instance.trigger();
    }
    function mutantFunction() public payable {
        require(block.timestamp > 0, "The function trigger should not be called before the first time of the mutant.");
        if (mutant) {
            mutant = false;
            emit Muted(msg.sender, address(this));
        }
    }
}
