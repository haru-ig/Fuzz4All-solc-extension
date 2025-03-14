pragma solidity ^0.8.0;
import "./MutatorCallerMutator.sol";
contract FallbackMutator{
    MutatorCallerMutator mutatorCaller = new MutatorCallerMutator();
    function Mutator() public payable {
        mutatorCaller.Mutator();
    }

    function Caller() public payable {
        mutatorCaller.Caller();
    }
}
