pragma solidity ^0.8.0;
contract semanticEquivalentMutation3{
    uint[] public intData;
    uint public[2][5] uintData;
    uint[4] public uint2dData;
    address public addressData;
    ArrayMutability public arrMutabilityData;
    uint public arrayData;

    function semanticEquivalent()
    public
    pure
    returns (uint)
    {
        return arrayData;
    }
}
