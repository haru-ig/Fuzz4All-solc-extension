pragma solidity ^0.8.0;
contract MutationQ4 {
    uint x;
    uint constant constant1 = 1;
    uint constant constant2 = 18;
    bytes32 owner;
    constructor(){
        owner = "0xdeadbeefdeadbeefdeadbeedeedeadbeedeedeadbeef";
    }
    modifier onlyOwner {
        require(keccak256(abi.encodePacked(msg.sender)) == owner, "Caller is not the owner");
        _;
    }
    function setQuuz() public onlyOwner {
        x = constant1 >> constant2;
    }
    function getQuuz() public view returns (uint256) {
        return x;
    }
}
contract MutationR4 {
    uint x;
    uint constant constant1 = 1;
    uint constant constant2 = 18;
    bytes32 owner;
    constructor(){
        owner = "0xdeadbeefdeadbeefdeadbeedeedeadbeedeedeadbeef";
    }
    modifier onlyOwner {
        require(keccak256(abi.encodePacked(msg.sender)) == owner, "Caller is not the owner");
        _;
    }
    function setQuuu() public onlyOwner {
        x = constant1 << constant2;
    }
    function getQuuu() public view returns (uint256) {
        return x;
    }
}
