pragma solidity ^0.8.0;
contract MutatedLotteryWithEquivalence {
    address[] internal testArray;
    constructor() public {
        testArray.push(address(this));
    }
    function addArrayElement() public{
        testArray.push(address(this));
    }
    function getEquivalence() public view returns(address[] memory)  {
        return testArray;
    }
}
