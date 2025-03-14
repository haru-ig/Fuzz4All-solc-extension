pragma solidity ^0.8.0;
contract Mutate13 {
    bytes32 private constant _name = "Hello World.";
    constructor(bytes32 _name) {
        bytes32 a;
        a = _name;
    }
    function greet() external view {
        bytes32 res;
        (res, ) = _name.call();
    }
}
