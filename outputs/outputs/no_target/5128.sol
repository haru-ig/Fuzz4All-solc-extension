pragma solidity ^0.8.0;
contract C___mutated_previously_generated_contractx___mutated_program_mutated_for_upgrade_testing {
    bool calledBy__mutated_previously_generated_contract;
    uint private variable;

    constructor() {
        require(calledBy__mutated_previously_generated_contract);
        calledBy__mutated_previously_generated_contract = false;
        variable = 10;
    }

    fallback() payable public {}
    receive() external payable {}
    function f1() public {}
    function f2() public {
        variable = 8;
    }

    modifier m1() {
        require(calledBy__mutated_previously_generated_contract);
        calledBy__mutated_previously_generated_contract = false;
        _;
    }
}

pragma solidity ^0.8.0;
contract C___mutated_previously_generated_contracts_mutated_for_upgrade_testing {
    bool calledBy__mutated_previously_generated_contract;
    uint private variable;

    constructor() {
        require(calledBy__mutated_previously_generated_contract);
        calledBy__mutated_previously_generated_contract = false;
        variable = 20;
    }

    fallback() public {}

    receive() public {}

    function f1() public {}

    function f2() public {
        variable = 10;
    }

    function g1(bool _value) public {
        if (_value) {
            variable = 12;
        }
    }
    function g2(string memory _value) public {
        if (_value == "some very very very very very very very very very very very very very very very very very very very very very very very very long string".toBytes()) {
            variable = variable + 1;
        }
    }

    modifier m0() {
        require(calledBy__mutated_previously_generated_contract);
        calledBy__mutated_previously_generated_contract = false;
        _;
    }
    modifier m1() {
        require(calledBy__mutated_previously_generated_contract);
        calledBy__mutated_previously_generated_contract = false;
        _;
    }
}
/* Please create a contract, which contains both upgraded and un-upgraded versions,
and create tests which checks if the mutability feature of the
