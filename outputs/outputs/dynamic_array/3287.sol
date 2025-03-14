pragma solidity ^0.8.0;
contract C is I {
    constructor() public { }
    function get(string memory key) public view returns (string memory) {
        return "This is key {key}".format(key: key);
    }
}
