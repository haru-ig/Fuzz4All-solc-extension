pragma solidity ^0.8.0;
contract C {
    mapping(uint => mapping(address => bool)) public c;
    function f_() public view returns (uint, bool) {
        return (a, false);
    }
    constructor() public {
        mapping(uint => mapping(address => bool)) memory memory1 = mapping(uint => mapping(address => bool));
        (a, b) = memory1[0][0];
        c[0][0] = memory1[0][1];
    }
}
