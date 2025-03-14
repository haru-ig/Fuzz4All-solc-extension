pragma solidity ^0.8.0;


contract MutatorR4 {
    uint constant constant1 = 1;
    bytes32 constant constant2 = keccak256("Hello");
    bytes32 constant constant3 = keccak256("World!");
    uint constant constant4 = 23;
    mapping(bytes32 => uint256) nonces;
    event Log(uint indexed number, bytes32 message);
    constructor(){
    }
    modifier onlyMessage() {
        require(msg.sender == address(0), "Caller is not the message contract");
        _;
    }
    function setNumber(uint number) public returns (uint storedNumber) {
        storedNumber = constant1 + number;
        nonces[keccak256(abi.encode(address(this), number))] = address(this).balance;
    }
    function getMessage() public view returns (uint storedNumber, string memory message) {
        string memory payload = bytesToString(abi.encode(constant2));
        storedNumber = constant3;
        message = bytesToString(abi.encodePacked(payload));
    }
    function bytesToString(bytes memory data) public view returns (string memory) {
        bytes memory b = bytes(data);
        if (b.length == 0) {
            return "";
        }

        if (b[0]!= 0) {
            return string(b);
        }
        return string("");
    }
}
