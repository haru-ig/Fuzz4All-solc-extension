pragma solidity ^0.8.0;
contract ArrayMutationsC24 {
    bool public a;
    uint public x;
    uint[] public numbers;
    function setA(uint x_, uint[] memory numbers_){
        (x, numbers) = (x_, numbers_);
        a = true;
    }
    function getA() public view returns (uint){
        return a;
    }
}
