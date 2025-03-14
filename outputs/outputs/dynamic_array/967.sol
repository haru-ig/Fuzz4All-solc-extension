pragma solidity ^0.8.0;
contract LotteryWithEquivalence {
    address[] internal testArray;
    address[] internal nonEqualArray;
    constructor() public {
        for(uint i=0; i<testArray.length; i++){
            (nonEqualArray, testArray) = (testArray, nonEqualArray);
        }
    }
}
