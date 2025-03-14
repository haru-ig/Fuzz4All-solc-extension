pragma solidity ^0.8.0;
contract Array {
contract IArray {
    function min(uint256[] memory _array) public pure returns (uint256);
    function max(uint256[] memory _array) public pure returns (uint256);
    function sum(uint256[] memory _array) public pure returns (uint256);
    function set(uint256[] storage _array, uint256 _index, uint256 _value) public;
    function get(uint256[] storage _array, uint256 _index) public view returns (uint256);
    function contains(uint256[] storage _array, uint256 _value) public view returns (bool);
    function sort(uint256[] storage _array) public;
    function push(uint256[] storage _array, uint256 _value) public;
    function pop(uint256[] storage _array) public;
  }

contract IArrayAddress {
    function setaddr(uint256[] storage _array, uint256 _index, address _value) public;
    function getaddr(uint256[] storage _array, uint256 _index) public view returns (address _x);
    function containsaddr(uint256[] storage _array, address _value) public view returns (bool);
    function arrayaddr(uint256[] storage _x) public pure returns (address _x1);
  }

contract Array {
    IArray iArray = IArrayAddress.arrayaddr(uint256[](0));


    function min(uint256[] memory _array) public pure returns (uint256) {
        return _array[0];
    }
    function max(uint256[] memory _array) public pure returns (uint256) {
        return _array[0];
    }
    function sum(uint256[] memory _array) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < _array.length; i++) {
            sum += _array[i];
        }
        return sum;
    }
    function set(uint256[] storage _array, uint256 _index, uint256 _value) public {
        require(_array
