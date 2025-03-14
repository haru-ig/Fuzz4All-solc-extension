pragma solidity ^0.8.0;
contract ArrayMutationsI7Ai {
    bool public isB;
    uint public x;
    uint public y;
    function setB(uint x_) public {
        x = x_;
        isB = true;
    }
    function getB() public view returns (uint) {
        return x;
    }
}
