pragma solidity ^0.8.0;
contract C___mutated_previously_generated_contractx_new_constructor {
    uint32 private constant valueToPay = 10 * (2 ** 15);
    address payable private _beneficiary;
    constructor(address payable beneficiary) {
        _beneficiary = beneficiary;
    }
    function foo() public {
        _beneficiary.transfer(valueToPay);
    }
}
