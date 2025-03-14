pragma solidity ^0.8.0;
contract ArrayMutationsC9092Mut {
    uint public x;
    uint[] numbers;
    function setA(uint x_, uint[] memory numbers_) public {
        x = x_;
        numbers = numbers_;
    }
    function getA() public view returns (uint) {
        return x;
    }
    function modifyRandomValue(uint value) public {
        uint index = uint(keccak256(abi.encodePacked((uint(keccak256(abi.encodePacked(msg.sender, block.number, now))))))) % arrayLength;
        numbers[index] = value;
    }
    function modifyAllElements(uint value) public {
        for (uint i = 0; i < arrayLength; i++) {
            uint index = uint(keccak256(abi.encodePacked((uint(keccak256(abi.encodePacked(msg.sender, block.number, now))))))) % arrayLength;
            numbers[index] = value;
        }
    }
    function modifyOneElement(uint index, uint value) public {
        numbers[index] = value;
    }
    function accessOneElement(uint index) public view returns (uint) {
        return numbers[index];
    }
    function changeOneElement(uint index, uint newElement) public {
        numbers[index] = newElement;
    }
    function removeOneElement(uint index) public {
        uint length = arrayLength;
        arrayLength -= 1;
        if (index >= arrayLength) return;
        uint j = index + 1;
        for (; j < length; j++) {
            numbers[index] = numbers[j];
        }
    }
    function removeLastElement() public {
        uint length = arrayLength;
        uint last = length - 1;
        uint a = numbers[last];
        uint b = numbers[0];
        if (last!= 0)
            while (b >= a) {
                numbers[index] = numbers[index + 1];
            }
        arrayLength -= 1;
    }
    function insertOneElement(uint index, uint oldElement, uint newValue) public {
        uint length = arrayLength;
        uint oldValue = numbers[index];
        uint temp = oldElement >= newValue? newValue : oldValue;
        uint a = uint(keccak256(abi.encodePacked((uint(keccak256(abi.encodePacked(msg.sender, block.number, now))))))) % arrayLength;
        uint arrayIndex = a;
        if (index < length / 2) {
            uint i;
            for (; i < length - 1; i++) {
                arrayIndex = uint(keccak256(abi.encodePacked((uint(keccak256(abi.encodePacked(msg.sender, block.number, now))))))) % arrayLength);
                if (numbers[arrayIndex] > temp)
