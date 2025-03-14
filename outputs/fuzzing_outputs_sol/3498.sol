pragma solidity ^0.8.0;
contract FallbackMutatedStorage5 {
    uint public num;
    constructor() public {
    }
    function changeNumber(uint _number) public returns (bool) {
        num = _number;
        return true;
    }
    function getNumber() public view returns (uint) {
        return num;
    }
}
