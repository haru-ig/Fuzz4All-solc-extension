pragma solidity ^0.8.0;
contract ArrayMutationsC6258 {
    uint public x;
    uint[] internal numbers;
    function setA(uint x_, uint[] memory numbers_) public {
        x = x_;
        numbers = numbers_;
    }
    function getA() public view returns (uint) {
        return x;
    }
}
