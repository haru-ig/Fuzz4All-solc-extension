pragma solidity ^0.8.0;

contract Mutated
{
    constructor() {}

    function mutatedFunction()
        public
        pure
        returns (bool)
    {
        return true;
    }

    uint constant value = 1;
    uint256[2] immutable array = [value, 2];
}


pragma solidity ^0.8.0;
contract Mutated
{
    function mutatedFunction()
        public
        pure
        returns (bool)
    {
        return true;
    }

    uint32 constant value = 1;
    uint[72] private array = [value];
}
