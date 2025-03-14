pragma solidity ^0.8.0;
contract MultipleArrayModifications {
    uint[10] array;
    function changeArraySize(uint x) public {
        array.length = x;
    }
    function incrementArray() public {
        array.push(0);
    }
    function setElement(uint pos, uint value) public {
        array[pos] = value;
    }
    function getElement(uint pos) public view returns (uint) {
        return array[pos];
    }
}
