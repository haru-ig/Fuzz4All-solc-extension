pragma solidity ^0.8.0;
contract ArrayMutationsC6418Mut {
    uint public x;
    uint[] public numbers;
    function setA(uint x_, uint[] memory numbers_) public {
        x = x_;
        numbers = numbers_;
    }
    function getA() public view returns (uint) {
        return x;
    }
}



contract MutateExample is ArrayMutationsC6418Mut {
}
