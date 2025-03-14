pragma solidity ^0.8.0;
contract LotteryWithArithmetic {
    uint32[] internal testArray;
    uint32[] internal nonEqualArray;
    constructor() public {
        testArray.push(2);
        testArray.push(2);
        nonEqualArray.push(2);
        nonEqualArray.push(2);
    }
    function getArithmetic() public view returns(uint32[] memory){
        return nonEqualArray;
    }
}
