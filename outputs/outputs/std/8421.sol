pragma solidity ^0.8.0;
contract ArrayMutationsC457Ar {
    bool public isA;
    uint public x;
    function setA(uint x_) public {
        x = x_;
        isA = false;
    }
    function getA() public view returns (uint) {
        return x;
    }
}
