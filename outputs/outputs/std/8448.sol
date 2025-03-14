pragma solidity ^0.8.0;
contract ArrayMutationsC6418A {
    bool public isA;
    uint public x;
    uint[] public numbers;
    constructor(uint x_) {
        isA = true;
        numbers = new uint[](10);
        x = x_;
        numbers[9] = x_;
    }
    function setA() public {
        isA = false;
        x = 33;
    }
    function getA() public view returns (uint[]) {
        return numbers;
    }
    function getA1() public view returns (uint) {
        return x;
    }
}
