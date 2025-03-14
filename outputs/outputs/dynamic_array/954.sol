pragma solidity ^0.8.0;
contract LotteryWithDynamicArrayAssignment {
    address[] internal testArray;
    constructor() public {
        testArray.push(address(this));
    }
    function addArrayElement() public{
        testArray.push(address(this));
    }
    function getDynamicArray() public view returns(address[] memory){
        return testArray;
    }
}
