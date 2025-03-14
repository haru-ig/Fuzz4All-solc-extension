pragma solidity ^0.8.0;
contract C {
    bytes[] public b;
    bytes value;
    constructor () {
        b.push(abi.encodePacked("\"test\""));
        value = abi.encodePacked("\"test\"");
        b.push(abi.encodePacked("\"test\""));
        b[0] = value;
        b[1] = value;
        b[2] = value;
    }
}
