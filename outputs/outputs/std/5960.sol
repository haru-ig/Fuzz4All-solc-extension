pragma solidity ^0.8.0;
contract Mutated {
    uint32 private _number;
    constructor(uint32 number) private {
        _number = number;
    }

    function modify() private {
        _number = 25;
    }
    function getNumber() public view returns (uint32) {
        return _number;
    }
}
contract Mutated29 {
    uint32 public _number;
    constructor() private {
        _number = 29;
    }

    function setNumber(uint32 newNumber) public {
        _number = newNumber;
    }

    function getNumber() private view returns (uint32) {
        return _number;
    }
}
