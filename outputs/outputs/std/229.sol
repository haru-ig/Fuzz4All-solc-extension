pragma solidity ^0.8.0;

contract Array {
    uint256 private _elements;
    uint256[] private _contents;
    function push(uint256 _element) public {
        _elements++;
        _contents[_elements - 1] = _element;
    }
    function get(uint256 _index) public view returns (uint256) {
        return _contents[_index];
    }
    function length() public view returns (uint256) {
        return _elements;
    }
    function max() public view returns (uint256) {
        for (uint256 i = 0; i < length(); i++) {
            if (get(i) > max) max = get(i);
        }
        return max;
    }
    function min() public view returns (uint256) {
        for (uint256 i = 0; i < length(); i++) {
            if (get(i) < min) min = get(i);
        }
        return min;
    }
    function sum() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < _elements; i++) {
            sum += get(i);
        }
        return sum;
    }
}
