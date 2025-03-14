pragma solidity ^0.8.0;
contract MutatedStorage5 {
    uint public num;
    constructor() public {
        num = 0;
    }
    function changeNumber(uint _number) public returns (bool) {
        num = _number + 1;
        return true;
    }
    function addZeroTwo() public {
        num += 2;
    }
}
