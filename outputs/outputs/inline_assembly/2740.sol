pragma solidity ^0.8.0;
contract A {
    uint public constant alphabet = 27;
    uint public names;
    uint public namelength;
    uint public value = 3;
    mapping(uint=>uint) public dict;
    mapping(string=>string) public strs;
    function set (uint x) public {
        value = x;
    }
    function getlength() public view returns (uint l) {
        l = namelength;
    }
}
