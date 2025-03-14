pragma solidity ^0.8.0;
import "./Mutator.sol";
contract Mutaminator is Mutator{
    mapping(address => Mutator) public mutators;
    mapping(address => bool) public authorized;
    modifier onlyAuthorized() {
        require(authorized[msg.sender] == true);
        _;
    }

    fallback() public payable onlyAuthorized {

    }
    function mutator(uint256 initialBalance) public onlyAuthorized external returns (Mutator){
        Mutator mutatorInstance = new MutatorMock(this);
        addresses[18] = address(mutatorInstance);
        balances[18] = initialBalance;
        mutators[0x18] = mutatorInstance;
        return mutatorInstance;
    }
}
contract MutatorMock is Mutator {
    constructor(address _caller) payable {
        require(call.value(0););
    }
}
