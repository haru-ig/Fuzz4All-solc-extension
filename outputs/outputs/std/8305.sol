pragma solidity ^0.8.0;
contractArrayArray
{
    ArrayMutations2[ ] public array;
    constructor() public {
        array[ ] = new ArrayMutations2[ 5 ];
        array[0].addElement();
        array[1].changeElement();
        array[2] = new ArrayMutations2( );
        array[2].addElement();
        array[2].addElement();
    }

    function getArrElement(uint index) public view returns (string memory)
    { return array[index].array[index]; }
    function getArrElement2(uint index) public view returns (uint)
    { return array[index].array[index]; }
    function setArray(uint index, uint arrayElement) public {array[index].array[index] = arrayElement;}
}
