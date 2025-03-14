pragma solidity ^0.8.0;
contract Computation
{
    uint internal constant A = 5;
    uint internal constant B = 2;
    constructor() {
    }
    modifier onlyA() {
        require(msg.sender == address(this).balance);
        _;
    }
    function multiply() public onlyA {
    }
    function setA(uint x) public onlyA {
    }
    function getA() view public returns (uint) {
        return A;
    }
    function setB(uint x) public onlyA {
    }
    function getB() view public returns (uint) {
        return B;
    }
}

pragma solidity ^0.8.0;
contract Computation
{
    address public contractAddress;
    uint public constant A = 5;
    uint public constant B = 2;
    constructor() {
        contractAddress = address(new Computation());
    }
    modifier onlyA() {
        require(msg.sender == contractAddress.getA());
        _;
    }
    function multiply() public onlyA {
    }
    function setA(uint x) public onlyA {
    }
    function getA() view public returns (uint) {
        return A;
    }
    function setB(uint x) public onlyA {
    }
    function getB() view public returns (uint) {
        return B;
    }
}

pragma solidity ^0.8.0;
contract Computation
{
    uint internal constant A = 6;
    uint internal constant B = 2;
    constructor() {
    }
    modifier onlyA() {
        require(msg.sender == address(this).balance);
        _;
    }
    function multiply() public onlyA {
    }
    function setA(uint x) public onlyA {
        A = x;
    }
    function getA() view public returns (uint) {
        return A;
    }
    function setB(uint x) public onlyA {
    }
    function getB() view public returns (uint) {
        return B;
    }
}
