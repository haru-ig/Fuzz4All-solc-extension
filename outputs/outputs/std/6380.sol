pragma solidity ^0.8.0;
contract C {
    uint256 public constant myNumber = 10;
    uint256 public constant newValue = 20;
    constructor() {
        setMyNumber(new Mutator());
    }
    function setMyNumber(Mutator _myInt) public{
        myInt = _myInt;
    }
    function getMyNumber() public view returns (Mutator) {
        myNumber = myNumber + newValue;
        return myInt;
    }
}
