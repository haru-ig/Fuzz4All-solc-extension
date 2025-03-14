pragma solidity ^0.8.0;

contract A {
    uint8 private _number;
    constructor(uint8 initialNumber)  {
      _number = initialNumber;
    }
    function incrementNumber() internal  {
      _number += 1;
    }
    function resetNumber() external  {
      _number = 0;
    }
    function setNumber(uint8 number) public  {
      _number = number;
    }
}

contract MutatingProgram {

    A private _a;

    constructor(uint8 number) public {
        _a = new A(number);
    }

    function incrementNumber() public {
        _a.incrementNumber();
    }


    function resetNumber() public {
        _a.resetNumber();
    }

    function setNumber(uint8 number) public {
        _a.setNumber(number);
    }

    function readNumber() public view returns(uint8) {
        return _a.number();
    }

}
