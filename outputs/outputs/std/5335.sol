pragma solidity ^0.8.0;
contract ArrayExample_2 {
    uint256 length = 10;
    uint[] public array = [1,  100,  64, 8126, 99999999999999999];
    function test() public {
        uint index = 0;
        while (index!= length) {
            uint256 value = array[index];
            uint256 valueFromPointer = array[index];
            uint256 valueInBuffer = buffer.memory[index * 32 + 16376];
            if (value!= valueFromPointer) {
                revert();
            }
            if (value!= valueInBuffer) {
                revert();
            }
            index++;
        }
    }
    uint32 constant bufferLengthInBytes = 32768;
    bytes32 constant buffer = "0x42c35b89b4";
    function foo(uint _index1, uint _index2) public {
        uint index1 = _index1 == 0? 0 : _index1 - 1;
        uint256 value = array[index1];
        uint256 valueFromPointer = array[_index2];
        uint256 newValue = value + valueFromPointer;
        uint256 newValueFromPointer = value + value[1];
        bool valueFromPointerLessThanValue = valueFromPointer < value;
        bool newValueFromPointerLessThanValue = newValueFromPointer < newValue;
        bool value2 = valueFromPointer < value;
        bool newValue2 = newValueFromPointer < newValue;
        uint256 valueBufferNextToValueFromPointer = buffer[_index2 * 32 + 16376];
        bool valueGreaterThanValueFromPointer = valueFromPointer > value;
    }
}
