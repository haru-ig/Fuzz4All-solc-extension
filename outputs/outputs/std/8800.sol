pragma solidity ^0.8.0;
contract Mutated {
    address public beneficiary;
    uint public constant value = 2;
    address public immutable owner;
    constructor(address _owner) {
        address[] memory values;
        values.push(address(new Mutated));
        values.push(address(this));
        values.push(address(keccak256("The keccack")));
        beneficiary = msg.sender;
    }

}
