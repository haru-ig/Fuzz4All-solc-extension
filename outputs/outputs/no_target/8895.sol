pragma solidity ^0.8.0;
import "./EquivalentAbiMutations.sol";
contract SemanticEquivalentAbiMutations is EquivalentAbiMutations {
    function test (uint _value206, uint _value203, uint _value220, uint _value225) public view returns (uint, uint, uint, uint) {
        return ( _value206, _value203, _value220, _value225 );
    }
}
