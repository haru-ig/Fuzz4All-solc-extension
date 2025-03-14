pragma solidity ^0.8.0;
contract MyContract {
    string public name;
    bytes32 public constant CODEHASH = keccak256(bytes("Hello World"));
    constructor(string calldata _name) {
        name = _name;
    }
    function doSomething() external pure returns(bytes32 hash) {
        hash = CODEHASH;
    }
}
