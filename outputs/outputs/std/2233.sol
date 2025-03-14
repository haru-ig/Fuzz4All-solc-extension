pragma solidity ^0.8.0;
contract MutationQ3 {
    uint x;
    uint constant constant1 = 1;
    uint constant constant2 = 18;
    uint256 constant constant3 = 2;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setFoo() public onlyOwner {
        x = constant1 * constant2 / constant3;
    }
    function getFoo() public view returns (uint) {
        return x;
    }
}
contract MutationR3 {
    uint x;
    uint constant constant1 = 1;
    uint constant constant2 = 18;
    uint constant constant3 = 2;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setBar() public onlyOwner {
        uint z = constant1 / constant2 % constant3;
        x = z;
    }
    function getBar() public view returns (uint) {
        uint z;
        assembly {
            z := x
        }
        return z;
    }
}
