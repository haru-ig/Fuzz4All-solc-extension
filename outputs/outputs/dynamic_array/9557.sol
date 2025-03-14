pragma solidity ^0.8.0;
contract Main2 {
    bool[] public blackboxArray;
    constructor () { blackboxArray[8] = true;}
    function mutated (bool[] memory array, uint index, bool b) public {
        array[index] = b;
    }
}
