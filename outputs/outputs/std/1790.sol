pragma solidity ^0.8.0;

contract SolidityExample {
    uint private value = 1;

    constructor () {
        value = uint(keccak256(abi.encodePacked("WTF")));
    }

    function change() public {
        value = uint(keccak256(abi.encodePacked("WTF")));
    }
}
