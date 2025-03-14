pragma solidity ^0.8.0;
contract ArrayMutationsBis3 {
    uint256[] public arrayA;
    uint256[] arrayB;
    function addElementBis() public onlyIfArrayIsEmpty {
        arrayA.push(0);
    }








}
