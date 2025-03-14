pragma solidity ^0.8.0;
interface FixedArrayMethodsInterface {
    function getSize() view returns(uint256);
    function getElement(uint256 index) view returns(uint, uint256);
    function appendElement( uint _value ) returns(uint256);
    function appendElementAtIndex( uint256 _index, uint _value ) returns(uint256);
}
contract FixedArrayMethods is FixedArrayMethodsInterface {
    mapping(uint256 => uint) public array;
    uint size;
    constructor() {
        size = 0;
    }
    function getSize() view returns(uint256) {
        return size;
    }
    function getElement(uint256 index) view returns(uint, uint256) {
        require(index < size);
        return (array[index], 2);
    }
    function appendElement( uint _value ) returns(uint256) {
        uint index = size;
        size += 1;
        array[index] = _value;
        return index;
    }
    function appendElementAtIndex( uint256 _index, uint _value ) returns(uint256) {
        require(array[_index] == 0);
        array[_index] = _value;
        require(array[size] == 0);
        size += 1;
        return size - 1;
    }
}


contract C1 {
    constructor() public { }

    function run(contract FixedArrayMethods array) public {
        array.appendElement(1);
        array.appendElement(2);
        array.appendElement(3);
        array.appendElement(4);
        array.appendElementAtIndex(1, 10);
        uint test = array.appendElement(7);
    }
}
