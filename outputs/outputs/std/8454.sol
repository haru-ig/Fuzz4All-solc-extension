pragma solidity ^0.8.0;
contract ArrayMutationsC6418Mut2 is ArrayMutationsC6418Mut {
    uint public x;
    uint[] public numbers;
    function setA(uint x_) public {
        x = x_;
    }
    function getA() public view returns (uint) {
        return x;
    }
}
