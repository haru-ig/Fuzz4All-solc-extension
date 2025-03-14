pragma solidity ^0.8.0;
contract Main2 {
    struct Data {
        address[] arrayAddresses;
    }

    mapping(address => bytes32) public blackboxBytes;
    mapping(address => uint[]) public blackboxArray;
    constructor () { blackboxBytes[msg.sender] = 3; blackboxArray[msg.sender][0] = 13;}
    function data(address addr) public view returns (Data memory data) {
        data.arrayAddresses[0] = addr;
    }
    function setBytes (address to, bytes32 b) public {
        blackboxBytes[to] = b;
    }
    function setArray(address to, uint[] memory b) public {
        blackboxArray[to][0] = b.length;
    }
}
