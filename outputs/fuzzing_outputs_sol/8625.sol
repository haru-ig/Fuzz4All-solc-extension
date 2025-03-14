pragma solidity ^0.8.0;
contract Voter {
    using Mutator for Mutator.Mutator;
    uint256 public delegatedEther;
    address public admin;
    Mutator.Mutator[] public mutators;
    uint256 public totalAmount;

    event DelegatedEther(uint256);
    event Mutate(address indexed target);

    constructor() payable {
        admin = msg.sender;
    }

    function delegateAdmin() public payable {
        address lastMutator = address(0);
        for (uint256 i; i < mutators.length; ++i) {
            address currentMutator = mutators[i];
            if (msg.value == amounts[currentMutator]) {
                lastMutator = currentMutator;
                break;
            }
        }
        totalAmount += amounts[lastMutator];
        totalAmount += delegatedEther;
        address newAdmin = msg.sender;
        if (lastMutator!= 0x0) { mutators[i] = lastMutator; }
        amounts[admin] -= delegatedEther;
        amounts[msg.sender] += delegatedEther;
        delegatedEther = msg.value;
        emit DelegatedEther(delegatedEther);
    }

    function registerContract() external payable returns (bool) {
        address mutator = msg.sender;
        if (msg.value >= 750) {
            if (lastMutator == 0xFFFF) {
                totalAmount += msg.value;
                balances[msg.sender] += msg.value;
                lastMutator = mutator;
            }
            mutators.length++;
            totalAmount += amounts[msg.sender];
            emit Mutate(mutator);
            return true;
        }
        emit Failed(msg.sender);
        return false;
    }


    function fallback() external payable {
        admin.transfer(delegatedEther);
    }
}
