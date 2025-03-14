pragma solidity ^0.8.0;
contract Mutant6Mutator {
    event Muted(address indexed addressCaller, uint256 gasCost);
    modifier onlyMutant() {
        require(msg.sender == address(new Mutant5Mutator()), "The contract should be the mutant.");
        _;
    }
    constructor() {
    }
    function trigger() public {
        mutant();
    }
    function mutantFunction() public {
        mutant();
    }
    function mutant() public {
        bool mutant = false;

        if (mutant) {
            EmitMutant(msg.sender);
        }
        else {
            if (msg.value > 0 && msg.value < 5 ether) {
                mutant = true;
            }

            if(block.timestamp > 0 && msg.value > 25000 ether) {
                mutant = true;
            }
        }
    }
    function EmitMutant(address addressCaller) public {
        emit Muted(addressCaller, block.timestamp);
    }
}
