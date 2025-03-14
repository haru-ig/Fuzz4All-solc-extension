pragma solidity ^0.8.0;
contract Ownable___mutated_previously_generated_contractx_new_constructor {
    address owner;
    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner___mutated_previously_generated_contract() {
        require(msg.sender == owner);
        _;
    }
    function foo() public onlyOwner___mutated_previously_generated_contract {
        require(true);
    }
}
