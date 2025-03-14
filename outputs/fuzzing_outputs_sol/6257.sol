pragma solidity ^0.8.0;
contract Mutant5Mutator {
    event Muted(address indexed addressCaller, address indexed mutant);
    constructor() {
    }
    uint256 constant NUM = 1000;
    bool mutant;
    function trigger() public {
        mutant = true;
        emit Muted(msg.sender, address(this));
        for(uint I = 1; I <= NUM; I++) {

            assembly {
                let add = I * 2
            }
        }
    }
    function mutantFunction() public payable {
        require(block.timestamp > 0, "The function trigger should not be called before the first time of the mutant.");
        if (mutant) {
            emit Muted(msg.sender, address(this));
            mutant = false;
        }
    }
}
