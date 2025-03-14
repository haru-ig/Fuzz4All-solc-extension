pragma solidity ^0.8.0;
contract Equivalent {
    constructor() {
    }
    function mutantFunction() public payable { }
    function nonmutantFunction() public payable { }
    function mutantFunctionFallback() public mutatingpayable { }
    function nonmutantFunctionFallback() public mutatingpayable { }
}
