pragma solidity ^0.8.0;
contract MutateContract {
    bytes public data;
    mapping (uint => uint) public counters;
    constructor() public {
        data = "Mutated data".tobytes();
    }
    function getData() public view returns (bytes memory) {
        return data;
    }
    function getAddress() public view returns (address) {
        return address(this);
    }
    function getUint() public view returns (uint) {
        return counters[99];
    }
}
