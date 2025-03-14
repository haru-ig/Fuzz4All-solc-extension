pragma solidity ^0.8.0;
contract ArrayMutationsC6259 {
    bool public isA;
    uint public x;
    uint[] public numbers;
    function setA(uint x_, uint[] memory numbers_) public {
        x = x_;
        numbers = numbers_;
        isA = true;
    }
    function getA() public view returns (uint, uint[]) {
        uint result;
        (result, numbers) = (x, numbers);
        return (result, numbers);
    }
}
