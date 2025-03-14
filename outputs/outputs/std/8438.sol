pragma solidity ^0.8.0;
contract ArrayMutationsC6418 {
    bool public isA;
    uint public x;
    uint[] public numbers;
    function setA(uint x_, uint[] memory numbers_) public {
        isA = false;
        numbers = numbers_;
        x = x_;
    }
    function getA() public view returns (uint) {
        return x;
    }
}
