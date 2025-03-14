pragma solidity ^0.8.0;
contract Array {
    function findMinimum(uint[] memory _array) virtual public view returns (uint minimum) {
        minimum = _array[0];
        for (uint index = 0; index < _array.length; index++) {
            if (_array[index] < minimum)
                minimum = _array[index];
        }
    }
    function findMaximum(uint[] memory _array) virtual public view returns (uint maximum) {
        maximum = _array[_array.length -1];
        for (uint index = 0; index < _array.length; index++) {
            if (_array[index] > maximum)
                maximum = _array[index];
        }
    }
    function findSum(uint[] memory _array) virtual public view returns (uint sum) {
        sum = 0;
        for (uint index = 0; index < _array.length; index++)
            sum += _array[index];
    }
    function setElement(uint[] memory _array, uint _index, address _element) internal {
        _array[_index] = _element;
    }
    function setElements(uint[] memory _array, uint[] memory _elements) internal {
        for (uint index = 0; index < _array.length; index++)
            _array[index] = _elements[index];
    }
    function getElements(uint[] memory _array) internal view returns (uint[] memory) {
        uint[] memory returnArray;
        for (uint index = 0; index < _array.length; index++)
            returnArray[index] = _array[index];
        return returnArray;
    }
    function sortArray(uint[] memory _array) internal {
        uint _length = _array.length;
        uint temp;
        for (uint index = 1; index < _length-1; index++) {
            for (uint lowerIndex = index - 1; lowerIndex > 0; lowerIndex--) {
                if (compare(temp = _array[lowerIndex], _array[index]) <= 0)
                    swap(_array, lowerIndex, index);
                else
                    break;
            }
        }
    }
    function swap(uint[] memory _array, uint _first, uint _second) internal {
        uint temp;
        (temp, _array[_first]) = (_array[_first], _array[_second]);
        (temp, _array[_second]) = (_array[_second], _array[_first]);
    }
    function compare(uint lhs, uint rhs) internal pure returns (uint comparison) {
        return lhs - rhs;
    }
}
