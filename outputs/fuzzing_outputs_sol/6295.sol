pragma solidity ^0.8.0;
contract MutatedEquivalentNew {
    address payable immutable fallback_contract;

    function mutantFunctionNew() public payable {
        fallback_contract;
    }

    function _mutantFunctionFallback() public payable {
        fallback_contract;
    }
}
