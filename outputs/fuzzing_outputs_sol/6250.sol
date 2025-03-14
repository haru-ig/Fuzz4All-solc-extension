pragma solidity ^0.8.0;
contract Mutant5Mutator {
    event Muted(address indexed addressCaller, uint256 indexed balance, address indexed mutant);
    constructor() {
    }
    bool mutant;
    function trigger() public {
        mutant = true;
        uint256 bal;
        assembly {
            bal := balance
        }
        emit Muted(msg.sender, bal, address(this));
        mutant = false;
    }
    function mutantFunction() public payable {
        require(block.timestamp > 0, "The function trigger should not be called before the first time of the mutant.");
        if (mutant) {
            emit Muted(msg.sender, address(this), msg.value);
            mutant = false;
        }
    }
}
