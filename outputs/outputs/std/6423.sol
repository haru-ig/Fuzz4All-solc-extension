pragma solidity ^0.8.0;
contract Array {
struct MyInt {
    uint256 value;
}
contract Array_Example {
    function get_array_size(uint256[100] memory _array) public pure returns (uint256) {
        return _array.length;
    }
    function get_array_index(uint256[10] memory _array, uint256 _index) public pure returns (uint256) {
        return _array[_index];
    }
    function get_array_element_value(uint256[100] memory _arr, uint256 _element) public pure returns (uint) {
      return _arr[_element].value;
    }
    function set_array_element_value(uint256[100] memory _arr, uint256 _index, MyInt memory _v) public pure {
        _arr[_index].value =  _v.value;
    }
    function get_minimum_value(uint256[100] memory _arr) public pure returns (uint256) {
        if (_arr.length == 1) {
          return _arr[0].value;
        } else {
          uint256 min = _arr[0].value;
          for (uint256 i = 1; i < _arr.length; i++) {
            if (_arr[i].value < min) {
              min = _arr[i].value;
            }
          }
          return min;
        }
    }
    function get_maximum_value(uint256[100] memory _arr) public pure returns (uint256) {
        if (_arr.length == 1) {
          return _arr[0].value;
        } else {
          uint256 max = _arr[0].value;
          for (uint256 i = 1; i < _arr.length; i++) {
            if (_arr[i].value > max) {
              max = _arr[i].value;
            }
          }
          return max;
        }
    }
    function sort_array(uint256[100] memory _arr) public pure {
        uint256[100] memory _temp;
        _temp = _arr;
        for (uint256 i = 0; i < _
