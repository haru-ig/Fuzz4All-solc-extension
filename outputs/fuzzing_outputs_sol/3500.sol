pragma solidity ^0.8.0;
contract FallbackMutatedStorage6 {
    uint public num;
    constructor() public {
    }
    function changeNumber(uint _number) public returns (uint) {
        num = _number;
        return 1;
    }
    function getNumber() public view returns (uint) {
        return 1;
    }
}
