pragma solidity ^0.8.0;
contract MutationQ5 {
    using MutationQ4 for uint;
    uint x;
    uint constant constant constant1 = 1;
    uint constant constant2 = 18;
    bool b;
    address owner;
    uint constant constant3 = 123;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setQuux() public onlyOwner {
        b = true;
    }
    function getQuux() public view returns (bool) {
        return b;
    }
    function setX(uint newX) public {
        x = newX;
    }
    function getX() public view returns (uint) {
        return x;
    }
    function setConstant(uint newConstant) public {
        constant1 = newConstant;
    }
    function getConstant() public view returns (uint) {
        return constant1;
    }
    function setConstant2(uint newConstant) public {
        constant2 = newConstant;
    }
    function getConstant2() public view returns (uint) {
        return constant2;
    }
    function setConstant3(uint newConstant) public {
        constant3 = newConstant;
    }
    function getConstant3() public view returns (uint) {
        return constant3;
    }
    function setB(bool newB) public {
        b = newB;
    }
    function getB() public view returns (bool) {
        return b;
    }
}
