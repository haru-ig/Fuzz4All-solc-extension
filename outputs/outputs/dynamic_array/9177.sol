pragma solidity ^0.8.0;
contract Mutated
{
    uint[] public x;
    function mutatorFunction(uint[] memory input, uint elementIndex, uint numberOfElements, uint elementCapacity)
    returns(uint[] memory)
    {
        for(uint i = 0; i < numberOfElements; i++){
            x[i + elementCapacity] = input[i + elementCapacity];
        }
        return x;
    }
}
