pragma solidity ^0.8.0;
import "./Mutator.sol";
contract Mutation {
    Mutator public mutator;
    function setMutator(address _mutator) public {
        mutator = Mutator(_mutator);
    }
}
