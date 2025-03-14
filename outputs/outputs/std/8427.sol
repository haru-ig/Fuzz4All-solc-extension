pragma solidity ^0.8.0;
contract ArrayMutationsC7733 {
    bool isA;
    uint x;
    uint[] memory numbers;
    function setA(uint x_) public {
        x = x_;
    }
    function getA() public view returns (uint) {
        return x;
    }
}
