pragma solidity ^0.8.0;
contract LotteryWithSemanticallyEfficientDynamicArrayAssignement {
    address[] public testArray;
    constructor() public {
        testArray.push(address(this));
    }
    function addArrayElement() public{
        testArray.push(address(this));
    }
    function getDynamicArrayMemoryLength() public view returns(uint256 dynamicArrayLength){
        return testArray.length;
    }
    function getDynamicArrayAssignmentMemoryLength() public view returns(uint256 dynamicArrayAssignmentLength){
        return testArray.length;
    }
}
