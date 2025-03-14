pragma solidity ^0.8.0;
contract Array{
    uint[] a;
    uint[] b;

    function add(uint _a, uint _b) public pure returns (uint) {
        return a + _b;
    }
}

pragma solidity ^0.8.0;
contract MultiplyContract {
    uint public myNumber;

    constructor() {
        myNumber = 1;
    }

    function multiply(uint _a) public pure returns (uint) {
        return (myNumber* _a);
    }
}
contract AddContract{
     uint public myNumber;

    constructor() {
        myNumber = 1;
    }

    function add(uint _a) public pure returns (uint) {
        return a + _a;
    }
}
contract ArithmeticContract {
    uint myNumber;
    uint sum;
    uint number;

    uint m;

    function constructor() public {
        myNumber = 1;
        sum = 0;
        number = 0;
        m = multiply(myNumber, add(myNumber, subtract(myNumber, multiply(myNumber, subtract(myNumber))))))/number();
    }

    function multiply(uint _a, uint _b) public pure returns (uint) {
        return _a*_b;
    }

    function add(uint _a, uint _b) public pure returns (uint) {
        return _a + _b;
    }

    function subtract(uint _a, uint _b) public pure returns (uint) {
        return _a - _b;
    }
}
contract Arithmetic {
    string myString;
    uint myNumber;

    Arithmetic a;

    constructor() {
        myString = "A";
        myNumber = 1;
        a = Arithmetic();
    }

    function multiply() public {
        myNumber = 1;
        myNumber = multiply(myNumber);
    }

    function add() public {
        myNumber = 1;
        myNumber = number();
    }

    function subtract() public {
        myNumber = 1;
        myNumber = subtract(myNumber);
    }

    function addOrSubtract() public {
        myNumber = 1;
        myNumber = add(myNumber, subtract(myNumber));
        myNumber = subtract(myNumber, add(myNumber, subtract(myNumber)));
        myNumber = add(myNumber, subtract(myNumber, add(myNumber, subtract(myNumber)))));
        myNumber = subtract(myNumber, add(myNumber, subtract(myNumber))));
    }
    function multiplyOrAdd() public {
        myNumber = 1;
        myNumber = multiply(myNumber, add(myNumber, subtract(myNumber))));
        myNumber = add(myNumber, subtract(myNumber, add(myNumber, subtract(myNumber)))));
        myNumber = add(add(myNumber, subtract(myNumber)), add(myNumber, subtract(myNumber))));
        myNumber = add(add(add(myNumber, subtract
