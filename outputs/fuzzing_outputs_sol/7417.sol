pragma solidity ^0.8.0;
contract MutateExample {
    uint8 public data;
    function set() public payable {
        data += 1;
    }
    function get() public view returns (uint8) {
        return data;
    }
}
