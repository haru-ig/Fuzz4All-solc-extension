pragma solidity ^0.8.0;
contract Array {
    uint256[] arr;

    function setInt(uint256 index, uint256 val) public {
        require(index < arr.length, "BadIndex");
        arr[index] = val;
    }
    function getInt(uint256 idx) public view returns (uint256) {
        return idx < arr.length? arr[idx] : 0;
    }
    function add(uint256 _a, uint256 _b) public returns (uint) {

        return _a * _a + _b * _b;
    }
    function min(uint256 _a, uint256 _b) public pure returns (uint) {
        return _a <= _b? _a : _b;
    }
    function max(uint256 _a, uint256 _b) public pure returns (uint) {
        return _a >= _b? _a : _b;
    }
    function sum(uint256[] memory _arr) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint i = 0; i < _arr.length; i++) {
            sum += _arr[i];
        }
        return sum;
    }
    function getMin(uint256 _a, uint256 _b, uint256 _c) public pure returns (uint) {
        return Min(min(_a, _b), _c);
    }
    function getMax(uint256 _a, uint256 _b, uint256 _c) public pure returns (uint) {
        return Max(max(_a, _b), _c);
    }

    function getBiggestFromArr(uint256[] memory _arr) public pure returns (uint256) {
        return Max(0, _arr[_arr.length - 1]);
    }

    function getMax(uint256 _a, uint256 _b) public pure returns (uint) {
        return aMax(aMax(_a, _b), 0);
    }

    function Max(uint256 a, uint256 b) public pure returns (uint) {
        return a > b? a : b;
    }

    function aMax(uint256 a, uint256 b) public pure returns (uint) {
        return a >= b? a : b;
    }

    function getMin(uint256[] memory _arr) public pure returns (uint) {
        return Min(_arr[_arr.length - 1], 0);
    }

    function Min(uint256 a, uint256 b) public pure returns (uint) {
        return a > b? a : b;
    }
}

contract Convert {
    function parseInt(string memory s) public pure returns (uint) {
        return uint(s);
    }
}
