pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample is IMutatedSolidityAssemblyExample {
    uint public a;

    constructor(uint A) public {
        a = A + 6;
    }

    function a(uint B) public {
        a = a + B * (B + 30);
        uint temp;
    }
}
contract NonmutatedSolidityAssemblyExample is ISolidityAssemblyExample {
    uint public a;

    constructor(uint A) public {
        a = A;
    }

    function a(uint B) external {
        a = a + B + 10;
    }
}
contract MutateSolidityAssemblyExample is IMutatedSolidityAssemblyExample, MutatedSolidityAssemblyExample {
    uint public b;

    constructor(uint A) public {
        a = A;
    }

    function a(uint B) public {
        b = a + B * (B + 31);
    }
}
contract Main {
    address public owner;
    IMutatedSolidityAssemblyExample public mutatedExample;

    constructor() {
        owner = msg.sender;
        mutatedExample = new MutateSolidityAssemblyExample(4);
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function setA(address add) public payable onlyOwner {
        mutatedExample.setA(add, 10);
    }

    function getA(uint) public view returns(uint, uint, uint) {
        return (a, b, c);
    }

    function getSetters(uint) external view returns(uint, uint, uint) {
        return (mutatedExample.a, mutatedExample.b, mutatedExample.c);
    }

    function withdrawFund() public payable onlyOwner {
        owner.transfer(msg.value);
    }

    function getA(uint) public view returns(uint) {
        return (mutatedExample.a);
    }

    function getB(uint) public view returns(uint) {
        return (mutatedExample.b);
    }

    function getB(uint) public view returns(uint) {
        return (mutatedExample.a);
    }

    function getB(uint) public view returns(uint) {
        return (a);
    }

    function getA(uint) public view returns(
