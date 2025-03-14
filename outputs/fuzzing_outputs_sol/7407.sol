pragma solidity ^0.8.0;
contract MutateExample {
    uint8 public data;
    function set(uint8 _data) public {
        data = _data;
    }
    function get() public view returns (uint8) {
        return data;
    }
}
