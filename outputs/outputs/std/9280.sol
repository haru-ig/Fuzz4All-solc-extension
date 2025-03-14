pragma solidity ^0.8.0;
contract EquivalentToOriginal
{
    int private _array;
    int public array;
    constructor() public{
        array = 4;
    }
    function arrayWithMutations() internal {
        array = array + 5;
    }
}
