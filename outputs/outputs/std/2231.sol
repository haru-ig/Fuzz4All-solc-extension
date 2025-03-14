pragma solidity ^0.8.0;
interface MutationB2 {
    bytes x;
    bytes32 constant constant1 = bytes32(1);
    bytes32 constant constant2 = bytes32(18);
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setBaz() public onlyOwner {
        x = constant1;
    }
    function getBaz() public view returns (bytes memory) {
        return x;
    }
}
contract MutationQ3 {
    bytes x;
    bytes32 constant constant1 = bytes32(1);
    bytes32 constant constant2 = bytes32(18);
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setBil() public onlyOwner {
        x = constant2;
    }
    function getBil() public view returns (bytes memory) {
        return x;
    }
}
