pragma solidity ^0.8.0;
contract MutatedStorage5 {
    uint public num;
    constructor() public {
    }
    function modify(uint _number) public {
        num = _number;
    }
    function getNumber() public view returns (uint) {
        return num;
    }
}
