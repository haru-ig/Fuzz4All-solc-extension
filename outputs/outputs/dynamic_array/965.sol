pragma solidity ^0.8.0;
contract LotteryWithEquivalence {
    address[] internal testArray;
    address[] internal nonEqualArray;
    constructor() public {
        testArray.push(address(this));
        nonEqualArray.push(address(this));
    }
    function swapElements() public{
        (nonEqualArray, testArray) = (testArray, nonEqualArray);
    }
    function getEquivalence() public view returns(address[] memory){
        return (testArray);
    }
}
