pragma solidity ^0.8.0;
contract MutateExample2 {
    uint8 public data;
    constructor (uint8 _data) {
        data = _data;
    }
    function set(uint8 _data) public {
        data = _data;
    }
    function get() public view returns (uint8) {
        return data;
    }
}


contract CallExample is MutateExample2 {}
