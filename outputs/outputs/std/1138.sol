pragma solidity ^0.8.0;
contract Array {
    function findMin(uint[] memory _data) public pure returns (uint) {
        for (uint i = 0; i < _data.length; i++) {
            if (min < _data[i]) {
                min = _data[i];
            }
        }
        return min;
    }

    function findMax(uint[] memory _data) public pure returns (uint) {
        for (uint i = 0; i < _data.length; i++) {
            if (max > _data[i]) {
                max = _data[i];
            }
        }
        return max;
    }
    function findSum(uint[] memory _data) public pure returns (uint) {
        uint add = 0;
        for (uint i = 0; i < _data.length; i++) {
            add += _data[i];
        }
        return add;
    }
    function findMinMax(uint[] memory _data) public pure returns (uint, uint) {
        uint min = findMin(_data);
        uint max = findMax(_data);
        return (min, max);
    }

    function findDataOf(uint[] memory _data) public view returns ( uint[]) {
        return _data;
    }
}
