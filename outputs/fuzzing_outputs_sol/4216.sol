pragma solidity ^0.8.0;
contract MutationCallerMutatorVulnerable{
    function Mutator() external payable{revert("")}
    function Caller() external payable{revert("")}
}
