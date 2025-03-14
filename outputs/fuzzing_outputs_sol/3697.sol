pragma solidity ^0.8.0;

pragma solidity >=0.8.0;
contract Example7WithFallback {
    address private contractA;
    address private contractB;
    address private contractC;
    address private contractD;
    address payable private contractE;
    uint256 private x;
    uint256 private valA;
    uint256 private valB;
    uint256 private valC;
    uint256 private valD;
    uint256 private valE;

    constructor(address payable _contractA) {
        contractA = _contractA;
    }
    function initContract() public pure {
        contractA.transfer(100);
        contractB = contractA;
        contractA.transfer(50);
        contractA.call{value:10}("");
        contractB.transfer(30);
        contractA.transfer(50);
        contractC = contractA.deploy{value: 10}("");
        contractA.transfer(50);
        contractD = contractA.deploy{value: 10}("");
    }
    function add(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        sum = x;
        sum = x + y + sum;
        sum += x + y + sum;
        sum += x + y + sum;
        sum += x + y + sum;
        x = x + y + sum;
        x = x + y + sum;
        return x;
    }
    function sendEther() public payable {
        contractE.transfer(msg.value - msg.value / 500);
    }

    function add10And11Plus(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        sum += x;
        sum += y;
        x = x + y + sum;
        x = x + y + sum;
        return x;
    }
    function addToStorage() public {
