pragma solidity ^0.8.0;
contract ArrayMutationsC6418A {
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
contract ArrayMutationsA {
    ArrayMutationsA[] public sub = new ArrayMutationsA[](1);
    uint public x;
    uint[] public numbers;
    function setA(uint x_, uint[] memory numbers_) public {
        x = x_;
        numbers = numbers_;
    }
    function getA() public view returns (ArrayMutationsA memory) {
        return sub[0];
    }
}
contract ArrayMutateExample {
    uint[] public numbers;
    function arrayMutatedFunc() public {
        ArrayMutationsC6418A mutObj;
        ArrayMutationsC6418A memory a = mutObj;
        a.setA(x, numbers);
        ArrayMutationsC6418A[] memory arr = new ArrayMutationsC6418A[](1);
        arr[0] = mutObj;
    }
}
