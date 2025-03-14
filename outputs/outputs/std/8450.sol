pragma solidity ^0.8.0;
contract ArrayMutationsC6430Mut {
    uint public x;
    uint[] public numbers;
    function setA(uint x_, uint[] memory numbers_) public {
        x = x_;
        numbers = numbers_;
    }
    function getA() public view returns (uint) {
        return x;
    }
    function addNumbersToArrays() public {
        numbers.push(1, 2, 3, 4, 5);
    }
    function addNumbersToNumbers() public {
        numbers += 1, 2, 3, 4, 5;
    }
    function removeNumbersFromNumbers() public {
        delete numbers[1];
    }
    function removeNumbersFromArrays() public {
        delete numbers[4];
    }
    function addIntegers() public {
   }
    function subtractIntegers() public {
    }
}
contract MutateExample is ArrayMutationsC6430Mut {
}
