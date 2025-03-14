pragma solidity ^0.8.0;

contract Mutated is Mutated {

    MutType _mutType;

    function() external view {
        _mutType = MutType.A;
        emit Mutated(uint(0));
    }
}
