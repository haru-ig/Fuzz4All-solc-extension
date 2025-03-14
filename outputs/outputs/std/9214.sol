pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 public array;
    byte public constant my_value = 127;
    constructor() {
        array = my_value;
        array = 1;
    }
    modifier view_only() {
        require(msg.sender == address(this));
        _;
    }
    function decArray() public view_only returns (uint256) {
        return array - 1;
    }
    function setArray(uint256 _data) public view_only returns (uint256) {
        return array = _data;
    }
}
