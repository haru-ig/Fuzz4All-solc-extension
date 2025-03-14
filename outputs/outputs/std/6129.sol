pragma solidity ^0.8.0;
contract Array {
    mapping(uint256 => uint256) private _data;
    constructor () {}
    function set(uint256[] memory a, uint256 index, uint256 value) public {
        require(index < a.length, "index out of range");
        _data[index] = value;
    }
    function get(uint256[] memory a, uint256 index) public view returns (uint256 v) {
        require(index < a.length - 1, "index out of range");
        v = _data[index];
    }
    function length() public view returns (uint256 length) {
        return a.length;
    }
}
