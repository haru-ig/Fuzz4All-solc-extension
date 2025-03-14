pragma solidity ^0.8.0;
contract C___mutated_previously_generated_contractx_new_constructor {
    bool calledBy__mutated_previously_generated_contract;
    constructor() {
        calledBy__mutated_previously_generated_contract = true;
    }
    function foo() public {
        require(calledBy__mutated_previously_generated_contract);
    }
}
