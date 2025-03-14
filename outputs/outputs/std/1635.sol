pragma solidity ^0.8.0;
contract MemoryArrayAccessApp1 {
    uint[] private storage array;
    uint public i = 0;
    address public a;
    address[] public x;
    function getElement(uint _index) view public returns (uint memory element) {
        element = array[_index];
    }
    function setElement(uint _index, uint x) public {
        array[_index] = x;
    }
    function returnArray() view public returns (address[] memory) {
        return a;
    }
    function returnX() view public returns (address[] memory) {
        return x;
    }
    function checkSize() view public returns (uint size) {
        return a.length;
    }
    function checkData() view public returns(uint xSize) {
        return i;
    }
    function increaseElement(uint _index) public {
        uint x = 20;
        array[_index] = x;
    }
    constructor() {
        array.push(1);
        a = address(array);
        x.push(address(x));
    }
}
