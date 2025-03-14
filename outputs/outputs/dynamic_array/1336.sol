pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck5_Mutability {
    struct ArrayItem { bool b; }
    ArrayItem[] public array;
    uint public index;
    uint public indexAfterMutabilityChange;
    uint public lengthBeforeChangingIndex;
    uint public lengthAfterArrayChange;
    uint[] public indexes;
    constructor ()
    {
        indexes = new uint[](9);
    }

    function mutate()
    {
        indexes[8] = 0;
    }

    function mutatedInitialize()
    {
        uint i;
        uint j;
        indexes[0] = 1;
        indexes[1] = 2;
        indexes[2] = 3;
        indexes[3] = 4;
        indexes[4] = 5;
        indexes[5] = 6;
        indexes[6] = 7;
        indexes[7] = 8;
        lengthBeforeChangingIndex = 9;
    }

    function changeIndex()
    {
        indexes[9] = 10;
        index = 9;
        indexAfterMutabilityChange = index;
        lengthAfterArrayChange = indexes.length;
    }

    function resetIndexWithZero()
    {
        indexes[0] = 0;
        indexes[1] = 1;
        indexes[2] = 2;
        indexes[3] = 3;
        indexes[4] = 4;
        indexes[5] = 5;
        indexes[6] = 6;
        indexes[7] = 7;
        indexes[8] = 8;
        lengthBeforeChangingIndex = 9;
    }

    function resetIndexWithNull()
    {
        indexes[0] = null;
        indexes[1] = null;
        indexes[2] = null;
        indexes[3] = null;
        indexes[4] = null;
        indexes[5] = null;
        indexes[6] = null;
        indexes[7] = null;
        indexes[8] = null;
        lengthBeforeChangingIndex = 9;
    }

    function mutatedTestGet()
    {
        uint i;
        for(i=0; i<indexes.length; i++)
        {
            (int, uint, uint) = calldataToBytes();
        }
    }

    function calldataToBytes() public pure returns(uint len, uint160 addr, uint i)
    {
        len = msg.
