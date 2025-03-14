pragma solidity ^0.8.0;
contract LotteryWithArithmetic {
    uint[] internal testArray;
    uint[] internal nonEqualArray;
    constructor() public {
        testArray[testArray.length] = 2;
        testArray.push(2);
        testArray.push(2);
        nonEqualArray[nonEqualArray.length] = 2;
        nonEqualArray.push(2);
        nonEqualArray.push(2);
    }
    function getArithmetic() public view returns(uint[] memory){
        return nonEqualArray;
    }
}
