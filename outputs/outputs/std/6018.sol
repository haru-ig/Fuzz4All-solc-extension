pragma solidity ^0.8.0;
contract Array {
    uint[] public data;
    uint public length;
    function push(uint elem) public {
        data.push(elem);
        length = data.length;
    }
    function getMinimum() public view returns (uint result) {
        result = data[0];
        for (uint i = 1; i < length; i++) {
            if (data[i] < result) {
                result = data[i];
            }
        }
    }
    function getMaximum() public view returns (uint result) {
        result = data[0];
        for (uint i = 1; i < length; i++) {
            if (data[i] > result) {
                result = data[i];
            }
        }
    }
    function getSum() public view returns (uint result) {
        for (uint i = 0; i < length; i++) {
            result += data[i];
        }
    }
    function getAddressOfArray() public view returns (address) {
        return address(data);
    }
    function clear() public {
        length = 0;
        data = new uint[](0);
    }
    function getElement(uint index) public view returns (uint) {
        return data[index];
    }
    function getElements() public view returns (uint[] memory elements) {
        elements = new uint[](length);
        for (uint i = 0; i < length; i++) {
            elements[i] = data[i];
        }
    }
    function getElementIndex(uint elem) public view returns (uint) {
        for (uint i = 0; i < length; i++) {
            if (data[i] == elem) {
                return i;
            }
        }
        return -1;
    }
    function getElementsIndex(uint[] memory elements) public view returns (uint[] memory index) {
        index = new uint[](elements.length);
        for (uint i = 0; i < elements.length; i++) {
            index[i] = getElementIndex(elements[i]);
        }
    }
    function sort(uint[] memory order) public {
        if (length <= 1) return;
        for (uint i = length - 1; i > 0; i--) {
            for (uint j; j <= i; j++) {
                if (data[j] > data[j - 1]) {
                    uint elem = data[j];
                    data[j] = data[j - 1];
                    data[j - 1] = elem;
                }
            }
        }
        for (uint i = 1; i < length; i++) {
            if (data[0] > order[i]) {
                uint temp = order[i];
                order[i] = order[0];
                order[0] = temp;
            }
        }
    }
    function sumOfReversed(uint max) public returns (uint) {
        uint sum = 0;
        for (uint i = length; i >= 0; i
