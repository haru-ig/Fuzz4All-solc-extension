pragma solidity ^0.8.0;
contract ArrayAccessApp1Base {
    function addElement(address[] memory _array, address _value) public {
        uint size = _array.length;
        _array.length++;
        _array[size - 1] = _value;
    }

    function setElement(address[] memory _array, uint _index, address _value) public {
        require(_index < _array.length, _index);
        _array[_index] = _value;
    }

    function getElement(address[] memory _array, uint _index) public view returns (address result) {
        require(_index < _array.length, _index);
        result = _array[_index];
    }

    function sumArray(uint[] memory _array) public view returns (uint sum) {
        sum = 0;
        for (uint index = 0; index < _array.length; index++) {
            sum = sum + _array[index];
        }
    }

    function sumArrayWithModularSum(uint[] memory _array) public view returns (uint sum) {
        uint result;
        uint mod = 10000000;
        result = 0;
        for (uint index = 0; index < _array.length; index++) {
            result = result + (uint(uint(keccak256(abi.encodePacked(index, _array[index]))) % mod);
        }
        return result;
    }
}
