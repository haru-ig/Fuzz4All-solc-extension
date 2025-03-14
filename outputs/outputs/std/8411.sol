pragma solidity ^0.8.0;
contract ArrayMutationsAis6An {
    bool public isA;
    uint public x;
    function setA(uint x_) public {
        x = x_;
        isA = true;
    }
    function getA() public view returns (uint) {
        return x;
    }
}
