pragma solidity ^0.8.0;
contract C___generated_contract {
    function set_called(bool _flag) public { calledBy__generated_contract = _flag; }
    bool calledBy__generated_contract;
    constructor() public {
        set_called(true);
    }
    function foo() public {
        require(calledBy__generated_contract);
        set_called(false);
    }
}
