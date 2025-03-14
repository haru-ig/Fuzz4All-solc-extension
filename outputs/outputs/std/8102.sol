pragma solidity ^0.8.0;
contract Array_old{
    uint256 array1[3];
    function min(uint256 a,uint256 _b) public view returns (uint256) {
        return a < _b? a : _b;
    }
    function max(uint256 a,uint256 _b) public view returns (uint256) {
        return a > _b? a : _b;
    }
    function sum(uint256 a,uint256 _b) public view returns (uint256) {
        return a+_b;
    }
    function get(uint256 _a) public view returns (uint256){
        return array1[_a];
    }
    function set(uint256 _index,uint256 _value) public {
        array1[_index] = _value;
    }
    function length() public view returns (uint256){
        return array1.length;
    }
}
