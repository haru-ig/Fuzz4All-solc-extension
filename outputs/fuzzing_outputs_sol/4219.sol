pragma solidity ^0.8.0;
contract MutatorCallerMutator{
    function Mutator(address _receiver) external payable{}
    function Caller(address _receiver) public payable{}
}


pragma solidity ^0.8.0;
import "../utils/MutatorCallerMutatorVulnerable.sol";
contract FallbackMutator is MutatorCallerMutatorVulnerable{
    fallback() external payable{
    }
}
