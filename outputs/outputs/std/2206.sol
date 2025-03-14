pragma solidity ^0.8.0;
contract MutatedS {
    bytes32 data;
    constructor() {
        data = "Hello World";
    }
    function getBytes() public immutable returns (bytes32) {
        return data;
    }

}
