pragma solidity ^0.8.0;
contract LotteryWithEquivalenceMutator {
    address[] internal testArray;
    constructor() public {
        testArray.push(address(this));
    }
    function addArrayElement() public{
        uint256 newSize = testArray.length + 1;
        address[] memory mutatedTestArray = new address[](newSize);
        mutatedTestArray[newSize-1] = address(this);
        testArray = mutatedTestArray;
    }
    function getEquivalence() public view returns(address[] memory){
        return testArray;
    }
}
