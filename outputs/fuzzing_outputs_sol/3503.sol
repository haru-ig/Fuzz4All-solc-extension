pragma solidity ^0.8.0;
contract FallbackMutatedStorage6 {
    uint public num;
    constructor() public {
    }
    function changeNumber(uint _number) public {
        num = _number;
    }
    function getNumber() public view returns (uint) {
        return num;
    }
}
